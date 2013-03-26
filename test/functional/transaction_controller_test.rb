require 'test_helper'

class TransactionControllerTest < ActionController::TestCase
  test "should get month_end" do
    get :month_end
    assert_response :success
  end

  test "should get billing" do
    get :billing
    assert_response :success
  end

end
