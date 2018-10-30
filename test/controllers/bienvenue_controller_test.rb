require 'test_helper'

class BienvenueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bienvenue_index_url
    assert_response :success
  end

end
