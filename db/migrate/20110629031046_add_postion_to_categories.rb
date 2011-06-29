class AddPostionToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :position, :integer, :default => 99999
  end

  def self.down
    remove_column :categories, :position
  end
end
