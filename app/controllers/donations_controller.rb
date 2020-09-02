class DonationsController < ApplicationController
  before_action :set_project, only: %i[create]
  
  def create
    @donation = @project.donations.create(donation_params)
    @donation.user_id = current_user.id
    sum_amount_collected

    @donation.save
    redirect_to project_path(@project)
  end

  private

    def donation_params
      params.require(:donation).permit(:value_donation, :project_id, :user_id)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def sum_amount_collected
      @value_received = @donation.value_donation
      @project.amount_collected = @project.amount_collected + @value_received
      @project.save
    end
end