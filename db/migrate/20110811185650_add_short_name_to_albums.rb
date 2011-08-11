class AddShortNameToAlbums < ActiveRecord::Migration
  def self.up
    add_column :albums, :short_name, :string
  end

  def self.down
    remove_column :albums, :short_name
  end
end
