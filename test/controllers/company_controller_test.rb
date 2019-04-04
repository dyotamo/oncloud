require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get company_view_url
    assert_response :success
  end

end
