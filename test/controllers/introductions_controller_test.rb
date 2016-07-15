require 'test_helper'

class IntroductionsControllerTest < ActionController::TestCase
  setup do
    @introduction = introductions(:one)
    @update = {
      title: 'Reading',
      description: 'Reading is fun for kids.',
      image_url: 'reading.jpg',

    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:introductions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create introduction" do
    assert_difference('Introduction.count') do
      post :create, introduction: @update
    end

    assert_redirected_to introduction_path(assigns(:introduction))
  end

  test "should show introduction" do
    get :show, id: @introduction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @introduction
    assert_response :success
  end

  test "should update introduction" do
    patch :update, id: @introduction, introduction: @update
    assert_redirected_to introduction_path(assigns(:introduction))
  end

  test "should destroy introduction" do
    assert_difference('Introduction.count', -1) do
      delete :destroy, id: @introduction
    end

    assert_redirected_to introductions_path
  end
end
