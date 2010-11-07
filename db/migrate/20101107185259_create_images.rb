class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string  :resource_file_name
      t.string  :resource_content_type
      t.integer :resource_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
