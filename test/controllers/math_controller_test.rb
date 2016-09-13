require 'test_helper'

class MathControllerTest < ActionController::TestCase
  test "should get grade1" do
    get :grade1
    assert_response :success
  end

  test "should get grade2" do
    get :grade2
    assert_response :success
  end

end
