class Category < ActiveRecord::Base
  has_many :albums
 # validates_associated :album
 
  def first_album
    albums.empty? ? '#' : albums.first
  end
end
