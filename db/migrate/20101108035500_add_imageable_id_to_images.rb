class AddImageableIdToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :imageable_id, :integer
  end

  def self.down
    remove_column :images, :imageable_id
  end
end
