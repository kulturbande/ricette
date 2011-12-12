class ProjectsController < ApplicationController
  respond_to :html, :js

  def index
    @projects = Project.all
  end

  def edit
    @project = Project.find(params[:id])
    respond_with @project, :location => projects_url
  end

  def create

  end

  def update

  end

  def destroy

  end
end
