require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
    @user_story = UserStory.first
    @task = @user_story.tasks.new
    @task.task = "Do that"
    @task.status = "done"
  end

  test "should be successful" do
    assert @task.save, "normal save should be successful"
  end

  test "should have a task" do
    @task.task = ""
    assert !@task.save, "can't save task object without task description"
  end

  test "should have a user story id" do
    @task.user_story_id = nil
    assert !@task.save, "Can't save a task without user story"
  end

  test "status of tasks" do
    assert @task.save, "saving with done is correct"
    @task.status = "to_do"
    assert @task.save, "saving with to_do is correct"
    @task.status = "in_progress"
    assert @task.save, "saving with in_progress is correct"
    @task.status = "test"
    assert !@task.save, "Can't save without a correct status"
  end
end
