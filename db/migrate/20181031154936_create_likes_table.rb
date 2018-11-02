class CreateLikesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
    	t.references :user, index: true, null: true
      t.references :gossip, index: true, null: true
    end
  end
end