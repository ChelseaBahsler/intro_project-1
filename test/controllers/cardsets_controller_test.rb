require "test_helper"

class CardsetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cardsets_index_url
    assert_response :success
  end

  test "should get show" do
    get cardsets_show_url
    assert_response :success
  end
end
