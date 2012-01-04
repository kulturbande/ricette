class UserStoriesController < ApplicationController

  before_filter :load_project
  def index
    @product_backlog = @project.user_stories.product_backlog
    @sprint_backlog = @project.user_stories.sprint_backlog
  end

  def edit
    @user_story = @project.user_stories.find(params[:id])
  end

  def new
    @user_story = @project.user_stories.new
  end

  def create
    @user_story = @project.user_stories.new(params[:user_story])
    @user_story.backlog = "product"
    if @user_story.save
      flash[:notice] = "User Story created!"
    end
  end

  def update
    @user_story = @project.user_stories.find(params[:id])
    if @user_story.update_attributes(params[:user_story])
      flash[:notice] = "User Story updated!"
    end
  end

  def destroy
    @user_story = @project.user_stories.find(params[:id])
    if @user_story.destroy
      flash[:notice] = "User Story deleted!"
    end
  end

  private
  def load_project
    @project = Project.find(params[:project_id])
  end

end
