class CreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :subscribers
  end
end
