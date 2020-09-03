class MyProjectsController < ApplicationController
  def index
    @projects = Project.all.where(user_id: current_user)
  end
end
