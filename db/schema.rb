# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120126190901) do

  create_table "admins", :force => true do |t|
    t.string    "email",                               :default => "", :null => false
    t.string    "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string    "password_salt",                       :default => "", :null => false
    t.integer   "failed_attempts",                     :default => 0
    t.string    "unlock_token"
    t.timestamp "locked_at"
    t.string    "reset_password_token"
    t.integer   "sign_in_count",                       :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "album_page_elements", :force => true do |t|
    t.integer   "position",      :default => 99999
    t.integer   "album_page_id"
    t.text      "narrative"
    t.string    "style"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "album_pages", :force => true do |t|
    t.integer   "position",   :default => 99999
    t.integer   "album_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "album_sections", :force => true do |t|
    t.integer   "position",   :default => 99999
    t.string    "heading"
    t.integer   "album_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "narrative"
  end

  create_table "albums", :force => true do |t|
    t.string    "name"
    t.text      "narrative"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "category_id"
    t.string    "short_name"
    t.string    "coordinates"
    t.boolean   "hidden"
    t.integer   "position",    :default => 10000
  end

  create_table "categories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "position",   :default => 99999
  end

  create_table "images", :force => true do |t|
    t.string    "resource_file_name"
    t.string    "resource_content_type"
    t.integer   "resource_file_size"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "imageable_id"
    t.string    "imageable_type"
    t.integer   "position",              :default => 10000
  end

  create_table "pages", :force => true do |t|
    t.string    "title"
    t.text      "content"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "subscribers", :force => true do |t|
    t.string    "name"
    t.string    "address1"
    t.string    "address2"
    t.string    "city"
    t.string    "state"
    t.string    "postal_code"
    t.string    "country"
    t.string    "email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
