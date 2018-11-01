class CreateLikesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :likes_tables do |t|
    	t.references :user, index: true, null: true
    	t.references :gossip, index: true, null: true
    	# t.references :comment, index: true, null: true
    end
  end
end