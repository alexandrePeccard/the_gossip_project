class User < ActiveRecord::Base
	# has_many :comments
	has_many :likes
	has_many :gossip
	has_and_belongs_to_many :users
end