require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gossip_index_url
    assert_response :success
  end

  test "should get new" do
    get gossip_new_url
    assert_response :success
  end

  test "should get edit" do
    get gossip_edit_url
    assert_response :success
  end

  test "should get delete" do
    get gossip_delete_url
    assert_response :success
  end

end
