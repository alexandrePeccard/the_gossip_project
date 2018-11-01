class Like <  ActiveRecord::Base
	belongs_to :user
	# belongs_to :comment, optional: true
	belongs_to :gossip, optional: true
end