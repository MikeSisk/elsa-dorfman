class AddNarrativeToAlbumSection < ActiveRecord::Migration
  def self.up
    add_column :album_sections, :narrative, :text
  end

  def self.down
    remove_column :album_sections, :narrative
  end
end
