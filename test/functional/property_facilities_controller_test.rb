require 'test_helper'

class PropertyFacilitiesControllerTest < ActionController::TestCase
  setup do
    @property_facility = property_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_facility" do
    assert_difference('PropertyFacility.count') do
      post :create, property_facility: { facilities_id: @property_facility.facilities_id, property_id: @property_facility.property_id, quantity: @property_facility.quantity }
    end

    assert_redirected_to property_facility_path(assigns(:property_facility))
  end

  test "should show property_facility" do
    get :show, id: @property_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_facility
    assert_response :success
  end

  test "should update property_facility" do
    put :update, id: @property_facility, property_facility: { facilities_id: @property_facility.facilities_id, property_id: @property_facility.property_id, quantity: @property_facility.quantity }
    assert_redirected_to property_facility_path(assigns(:property_facility))
  end

  test "should destroy property_facility" do
    assert_difference('PropertyFacility.count', -1) do
      delete :destroy, id: @property_facility
    end

    assert_redirected_to property_facilities_path
  end
end
