class Album < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 64 }
  
  has_many  :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if => :all_blank
  
  has_many :album_pages
  accepts_nested_attributes_for :album_pages, :allow_destroy => true
  
  has_many :album_sections#, :order => "position"
  accepts_nested_attributes_for :album_sections, :allow_destroy => true
  
  belongs_to :category
 # validates_associated :category
 
  def self.by_name(name)
    Album.where(:name => name).first
  end
  
  def menu_name
    if short_name
      short_name.empty? ? name : short_name
    else
      name
    end
  end
end
