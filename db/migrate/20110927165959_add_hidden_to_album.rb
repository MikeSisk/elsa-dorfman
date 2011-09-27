class AddHiddenToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :hidden, :boolean
  end

  def self.down
    remove_column :albums, :hidden
  end
end
