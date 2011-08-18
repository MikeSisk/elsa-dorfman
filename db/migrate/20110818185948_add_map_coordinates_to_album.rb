class AddMapCoordinatesToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :coordinates, :string
  end

  def self.down
    remove_column :albums, :coordinates
  end
end
