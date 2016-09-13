require 'test_helper'

class ArtworkControllerTest < ActionController::TestCase
  test "should get ideas" do
    get :ideas
    assert_response :success
  end

  test "should get myproject" do
    get :myproject
    assert_response :success
  end

end
