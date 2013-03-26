require 'test_helper'

class TaxRegimesControllerTest < ActionController::TestCase
  setup do
    @tax_regime = tax_regimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tax_regimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax_regime" do
    assert_difference('TaxRegime.count') do
      post :create, tax_regime: { name: @tax_regime.name, tax_percentage: @tax_regime.tax_percentage }
    end

    assert_redirected_to tax_regime_path(assigns(:tax_regime))
  end

  test "should show tax_regime" do
    get :show, id: @tax_regime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax_regime
    assert_response :success
  end

  test "should update tax_regime" do
    put :update, id: @tax_regime, tax_regime: { name: @tax_regime.name, tax_percentage: @tax_regime.tax_percentage }
    assert_redirected_to tax_regime_path(assigns(:tax_regime))
  end

  test "should destroy tax_regime" do
    assert_difference('TaxRegime.count', -1) do
      delete :destroy, id: @tax_regime
    end

    assert_redirected_to tax_regimes_path
  end
end
