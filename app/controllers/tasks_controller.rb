class TasksController < ApplicationController

  before_filter :load_user_stories

  def index
    @tasks = @user_stories.tasks
  end

  private
  def load_user_stories
    @user_stories = UserStory.find(:all, :conditions => {:project_id => params[:project_id]})
  end
end