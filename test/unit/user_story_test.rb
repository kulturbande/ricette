require 'test_helper'

class UserStoryTest < ActiveSupport::TestCase

  def setup
    @project = Project.first
    @user_story = @project.user_stories.new
    @user_story.story = "test"
    @user_story.backlog = "product"
  end

  test "should have a project id" do
    @user_story.project_id = nil
    assert !@user_story.save, "Can't save a user story with no project"
  end

  test "should be successful" do
    assert @user_story.save, "normal save should be successful"
  end

  test "backlog should be product or sprint" do
    @user_story.backlog = "sprint"
    assert @user_story.save, "can store user story with 'sprint' attribute"
    @user_story.backlog = "test"
    assert !@user_story.save, "other strings are not allowed"
  end

  test "story should be set" do
    @user_story.story = ""
    assert !@user_story.save, "can't save with no story string'"
  end

end
