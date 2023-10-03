require "test_helper"

class WeaknessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weaknesses_index_url
    assert_response :success
  end

  test "should get show" do
    get weaknesses_show_url
    assert_response :success
  end
end
