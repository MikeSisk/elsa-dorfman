class CreateAlbumSections < ActiveRecord::Migration
  def self.up
    create_table :album_sections do |t|
      t.integer :position, :default => 99999
      t.string :heading
      t.integer :album_id

      t.timestamps
    end
  end

  def self.down
    drop_table :album_sections
  end
end
