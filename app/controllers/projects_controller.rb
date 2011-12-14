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
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project updated!"

    else
      render :json => @club.errors, :status => :unprocessable_entity
    end
  end

  def destroy

  end
end
