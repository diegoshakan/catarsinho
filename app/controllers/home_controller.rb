class HomeController < ApplicationController
  def index
    @q = Project.search(params[:q])
    @projects = @q.result(distinct: true)
  end
end
