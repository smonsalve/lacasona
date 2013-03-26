require 'test_helper'

class LegalNaturesControllerTest < ActionController::TestCase
  setup do
    @legal_nature = legal_natures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_natures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_nature" do
    assert_difference('LegalNature.count') do
      post :create, legal_nature: { name: @legal_nature.name }
    end

    assert_redirected_to legal_nature_path(assigns(:legal_nature))
  end

  test "should show legal_nature" do
    get :show, id: @legal_nature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_nature
    assert_response :success
  end

  test "should update legal_nature" do
    put :update, id: @legal_nature, legal_nature: { name: @legal_nature.name }
    assert_redirected_to legal_nature_path(assigns(:legal_nature))
  end

  test "should destroy legal_nature" do
    assert_difference('LegalNature.count', -1) do
      delete :destroy, id: @legal_nature
    end

    assert_redirected_to legal_natures_path
  end
end
