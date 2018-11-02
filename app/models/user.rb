class User < ActiveRecord::Base
	# has_many :comments
	has_many :likes
	has_many :gossip
	has_and_belongs_to_many :users

	def has_liked_gossip(gossip_id)
		Like.where(user_id: self.id, gossip_id: gossip_id).empty?
	end
end