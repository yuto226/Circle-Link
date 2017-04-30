require 'test_helper'

class NeetProfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get neet_profs_index_url
    assert_response :success
  end

  test "should get show" do
    get neet_profs_show_url
    assert_response :success
  end

end
