require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get indexx" do
    get pages_indexx_url
    assert_response :success
  end

end
