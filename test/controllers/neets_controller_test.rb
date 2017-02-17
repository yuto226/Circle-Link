require 'test_helper'

class NeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get neets_index_url
    assert_response :success
  end

end
