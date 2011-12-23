require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

end
