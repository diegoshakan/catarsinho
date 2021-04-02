class DonationsController < ApplicationController
  before_action :set_project, only: :create
  after_action :sum_total_collected
  
  def create
    @donation = @project.donations.create(donation_params)
    @donation.user_id = current_user.id
    
    if @donation.save
      redirect_to project_path(@project), notice: 'Obrigado por sua contribuição'
    else
      redirect_to project_path(@project)
    end
    
  end

  private

    def donation_params
      params.require(:donation).permit(:value_donation, :project_id, :user_id)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def sum_total_collected
      ::RulesDonation::Validations.new(@donation).sum_collected(@project)
    end

end