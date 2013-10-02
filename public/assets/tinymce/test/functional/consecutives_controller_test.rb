require 'test_helper'

class ConsecutivesControllerTest < ActionController::TestCase
  setup do
    @consecutive = consecutives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consecutives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consecutive" do
    assert_difference('Consecutive.count') do
      post :create, consecutive: { consecutive_type_id: @consecutive.consecutive_type_id, serie: @consecutive.serie }
    end

    assert_redirected_to consecutive_path(assigns(:consecutive))
  end

  test "should show consecutive" do
    get :show, id: @consecutive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consecutive
    assert_response :success
  end

  test "should update consecutive" do
    put :update, id: @consecutive, consecutive: { consecutive_type_id: @consecutive.consecutive_type_id, serie: @consecutive.serie }
    assert_redirected_to consecutive_path(assigns(:consecutive))
  end

  test "should destroy consecutive" do
    assert_difference('Consecutive.count', -1) do
      delete :destroy, id: @consecutive
    end

    assert_redirected_to consecutives_path
  end
end
