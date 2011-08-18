class AlbumSection < ActiveRecord::Base
  belongs_to :album
  # acts_as_list :scope => :album
  
  has_many :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true
  
  private
  
  # after_create :assign_position
  # def assign_position
  #   album = self.album
  #   if album
  #     if album.album_sections.size > 0
  #       self.position = album.album_sections.last.position + 1
  #     else
  #       self.position = 0
  #     end
  #   end
  # end
end
