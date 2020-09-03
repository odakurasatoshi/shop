require 'test_helper'

class Sale::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sale_items_index_url
    assert_response :success
  end

  test "should get show" do
    get sale_items_show_url
    assert_response :success
  end

end
