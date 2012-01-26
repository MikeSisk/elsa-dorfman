class AddPositionToAlbums < ActiveRecord::Migration
  def self.up
    add_column :albums, :position, :integer, :default => 10000
  end

  def self.down
    remove_column :albums, :position
  end
end
