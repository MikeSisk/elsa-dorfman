class CreateAlbumPageElements < ActiveRecord::Migration
  def self.up
    create_table :album_page_elements do |t|
      t.integer :position, :default => 99999
      t.integer :album_page_id
      t.text    :narrative

      t.string  :style

      t.timestamps
    end
  end

  def self.down
    drop_table :album_page_elements
  end
end
