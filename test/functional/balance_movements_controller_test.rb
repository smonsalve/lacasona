require 'test_helper'

class BalanceMovementsControllerTest < ActionController::TestCase
  setup do
    @balance_movement = balance_movements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balance_movements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balance_movement" do
    assert_difference('BalanceMovement.count') do
      post :create, balance_movement: { document_id: @balance_movement.document_id, document_type_id: @balance_movement.document_type_id, movement_date: @balance_movement.movement_date, value: @balance_movement.value }
    end

    assert_redirected_to balance_movement_path(assigns(:balance_movement))
  end

  test "should show balance_movement" do
    get :show, id: @balance_movement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @balance_movement
    assert_response :success
  end

  test "should update balance_movement" do
    put :update, id: @balance_movement, balance_movement: { document_id: @balance_movement.document_id, document_type_id: @balance_movement.document_type_id, movement_date: @balance_movement.movement_date, value: @balance_movement.value }
    assert_redirected_to balance_movement_path(assigns(:balance_movement))
  end

  test "should destroy balance_movement" do
    assert_difference('BalanceMovement.count', -1) do
      delete :destroy, id: @balance_movement
    end

    assert_redirected_to balance_movements_path
  end
end
