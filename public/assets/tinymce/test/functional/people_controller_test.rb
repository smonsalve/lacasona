require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { address: @person.address, card_id_number: @person.card_id_number, cellphone: @person.cellphone, email: @person.email, legal_nature_id: @person.legal_nature_id, name: @person.name, phone: @person.phone, tax_regime_id: @person.tax_regime_id }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    put :update, id: @person, person: { address: @person.address, card_id_number: @person.card_id_number, cellphone: @person.cellphone, email: @person.email, legal_nature_id: @person.legal_nature_id, name: @person.name, phone: @person.phone, tax_regime_id: @person.tax_regime_id }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
