require 'test_helper'

class OthersControllerTest < ActionDispatch::IntegrationTest
  test "should get bbb" do
    get others_bbb_url
    assert_response :success
  end

end
