require 'test_helper'

class BusinessDocumentTypesControllerTest < ActionController::TestCase
  setup do
    @business_document_type = business_document_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_document_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_document_type" do
    assert_difference('BusinessDocumentType.count') do
      post :create, business_document_type: { code: @business_document_type.code }
    end

    assert_redirected_to business_document_type_path(assigns(:business_document_type))
  end

  test "should show business_document_type" do
    get :show, id: @business_document_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_document_type
    assert_response :success
  end

  test "should update business_document_type" do
    put :update, id: @business_document_type, business_document_type: { code: @business_document_type.code }
    assert_redirected_to business_document_type_path(assigns(:business_document_type))
  end

  test "should destroy business_document_type" do
    assert_difference('BusinessDocumentType.count', -1) do
      delete :destroy, id: @business_document_type
    end

    assert_redirected_to business_document_types_path
  end
end
