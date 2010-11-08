class AddImageableIdToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :imageable_id, :integer
    add_column :images, :imageable_type, :string
  end
  def self.down
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type
  end
end


