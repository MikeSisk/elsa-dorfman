class AddPositionToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :position, :integer, :default => 10000
  end

  def self.down
    remove_column :images, :position
  end
end
