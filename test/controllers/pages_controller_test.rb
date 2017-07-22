require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get catspotter" do
    get pages_catspotter_url
    assert_response :success
  end

end
