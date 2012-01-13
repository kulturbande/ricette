class TasksController < ApplicationController

  before_filter :load_project

  def index
    @tasks = @project.tasks
  end

  def new
    @task = @project.tasks.new
  end

  def create
    @task = @project.tasks.new(params[:task])
    @task.status = "to_do"
    if @task.save
      flash[:notice] = "Task created!"
    end
  end

  def edit
    @task = @project.tasks.find(params[:id])
  end

  def update
    @task = @project.tasks.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = "Task updated!"
    end
  end

  def destroy
    @task = @project.tasks.find(params[:id])
    if @task.destroy
      flash[:notice] = "Task deleted!"
    end
  end

  def next
    @task = @project.tasks.find(params[:id])
    if @task.next
      @task.save
    end
  end

  private
  def load_project
    @project = Project.find(params[:project_id])
  end
end