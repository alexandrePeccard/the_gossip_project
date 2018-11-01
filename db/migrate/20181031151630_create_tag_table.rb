class CreateTagTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
    	t.string :name
    end

    create_join_table :tags, :gossips do |t|
      t.index [:tag_id, :gossip_id]
    end

  end
end
