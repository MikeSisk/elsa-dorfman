class Category < ActiveRecord::Base
  has_many :albums
 # validates_associated :album
 
 default_scope order("position ASC")
 
  def first_album
    albums.empty? ? '#' : albums.first
  end
end
