require 'test_helper'

class UserStoryTest < ActiveSupport::TestCase

  def setup
    @user_story = UserStory.new({:story => "test", :backlog => "product"})
  end

  test "should be successful" do
    assert @user_story.save, "normal save should be successful"
  end

  test "backlog should be product or current" do
    @user_story.backlog = "current"
    assert @user_story.save, "can store user story with 'current' attribute"
    @user_story.backlog = "test"
    assert !@user_story.save, "other strings are not allowed"
  end

  test "story should be set" do
    @user_story.story = ""
    assert !@user_story.save, "can't save with no story string'"
  end

end
