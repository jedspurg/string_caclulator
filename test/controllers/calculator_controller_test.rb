require "test_helper"

class CalculatorControllerTest < ActionController::TestCase
  test "renders index" do
    get :index
    assert_response :success
  end

  test "post to index returns results" do
    post :calculate, params: { equation: '5*3+1+6/85+9*100' }
    assert_response :success
    assert_equal '5*3+1+6/85+9*100 = 916.07', JSON.parse(@response.body)['results']
  end
end
