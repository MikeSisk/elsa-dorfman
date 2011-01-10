class CreateAlbumPages < ActiveRecord::Migration
  def self.up
    create_table :album_pages do |t|
      t.integer :position, :default => 99999
      t.integer :album_id

      t.timestamps
    end
  end

  def self.down
    drop_table :album_pages
  end
end
