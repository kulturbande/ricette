class ProjectsController < ApplicationController
  respond_to :html, :js

  def index
    @projects = Project.all
  end

  def edit
    @project = Project.find(params[:id])
  end

  def show
    redirect_to projects_url
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project created!"
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project updated!"
    end
  end

  def destroy
    flash[:notice] = "Project deleted!"
    @project = Project.find(params[:id])
    @project.destroy
  end
end
