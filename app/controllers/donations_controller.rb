class DonationsController < ApplicationController
  before_action :set_project, only: %i[create]
  
  def create
    @donation = @project.donations.create(donation_params)
    @donation.user_id = current_user.id
    
    @donation.save
    redirect_to project_path(@project)
  end

  private

    def donation_params
      params.require(:donation).permit(:value, :project_id, :user_id)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end
end