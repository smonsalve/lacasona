require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, appraisal: @property.appraisal, city: @property.city, code: @property.code, market_value: @property.market_value, neighborhood: @property.neighborhood, owner_id: @property.owner_id, phone: @property.phone, property_type_id: @property.property_type_id, rental_fee: @property.rental_fee, stratum: @property.stratum }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    put :update, id: @property, property: { address: @property.address, appraisal: @property.appraisal, city: @property.city, code: @property.code, market_value: @property.market_value, neighborhood: @property.neighborhood, owner_id: @property.owner_id, phone: @property.phone, property_type_id: @property.property_type_id, rental_fee: @property.rental_fee, stratum: @property.stratum }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
