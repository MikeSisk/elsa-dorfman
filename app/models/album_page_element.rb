class AlbumPageElement < ActiveRecord::Base
  validates :style, :presence => true

  @@Styles = %w[test1 test2 test3]
  def self.styles
    @@Styles
  end
  
  belongs_to :album_page
  
  has_many :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true
end
