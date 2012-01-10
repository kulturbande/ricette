class UserStoriesController < ApplicationController

  before_filter :load_project
  def index
    @product_backlog = @project.user_stories.product_backlog
    @current_backlog = @project.user_stories.current_backlog
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

  def sort
    number = 0
    params[:list].each do |item|
      user_story = UserStory.find(item.gsub("user-story-","")) if item.length > 4
      if user_story
        user_story.position = number
        user_story.backlog = params[:backlog]
        user_story.save
        number += 1
      end
    end
  end

  private
  def load_project
    @project = Project.find(params[:project_id])
  end

end
