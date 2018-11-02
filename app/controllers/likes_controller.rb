class LikesController < ApplicationController
  def like_gossip
  	like = Like.new(user_id: session['id'], gossip_id: params['id'])
  	like.save
  end

  def dislike_gossip
  	like = Like.find_by(user_id: session['id'], gossip_id: params['id'])
  	like.delete
  end

  def like_comment
  	like = Like.new(comment_id: params['id'], user_id: session['id'])
  	like.save
  end
end
