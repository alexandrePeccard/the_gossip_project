require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get like_gossip" do
    get likes_like_gossip_url
    assert_response :success
  end

  test "should get like_comment" do
    get likes_like_comment_url
    assert_response :success
  end

end
