require 'test_helper'

class InvoiceStatusesControllerTest < ActionController::TestCase
  setup do
    @invoice_status = invoice_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_status" do
    assert_difference('InvoiceStatus.count') do
      post :create, invoice_status: { code_status: @invoice_status.code_status, description: @invoice_status.description }
    end

    assert_redirected_to invoice_status_path(assigns(:invoice_status))
  end

  test "should show invoice_status" do
    get :show, id: @invoice_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_status
    assert_response :success
  end

  test "should update invoice_status" do
    put :update, id: @invoice_status, invoice_status: { code_status: @invoice_status.code_status, description: @invoice_status.description }
    assert_redirected_to invoice_status_path(assigns(:invoice_status))
  end

  test "should destroy invoice_status" do
    assert_difference('InvoiceStatus.count', -1) do
      delete :destroy, id: @invoice_status
    end

    assert_redirected_to invoice_statuses_path
  end
end
