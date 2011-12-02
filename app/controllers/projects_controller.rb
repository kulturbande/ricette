class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def edit

  end

end
