# class Comment < ActiveRecord::Base
# 	belongs_to :user
# 	belongs_to :gossip, optional: true
#   belongs_to :comment, class_name: "Comment", optional: true
# 	has_many :comments, class_name: "Comment"
# end