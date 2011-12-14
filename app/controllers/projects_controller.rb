class ProjectsController < ApplicationController
  respond_to :html, :js

  def index
    @projects = Project.all
  end

  def edit
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project created!"

    else

    end
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
    flash[:notice] = "Project deleted!"
    @project = Project.find(params[:id])
    @project.destroy
  end
end
