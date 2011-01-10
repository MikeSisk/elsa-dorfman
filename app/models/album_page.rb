class AlbumPage < ActiveRecord::Base
  belongs_to :album
  
  has_many :album_page_elements
  accepts_nested_attributes_for :album_page_elements, :allow_destroy => true
end
