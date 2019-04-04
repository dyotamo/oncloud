require 'test_helper'

class FrontControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get front_home_url
    assert_response :success
  end

  test "should get search" do
    get front_search_url
    assert_response :success
  end

end
