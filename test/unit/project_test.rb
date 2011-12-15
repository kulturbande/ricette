require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  def setup
    @project = Project.new({:title => "test"})
  end

  test "should not save project without title" do
    project = Project.new
    assert !project.save, "need a title to save project"
  end

  test "title should be unique" do
    @project.save
    project = Project.new({:title => "test"})
    assert !project.save, "title should be unique"
  end
end
