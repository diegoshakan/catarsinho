class MyProjectsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @projects = Project.all.where(user_id: current_user)
  end
end
