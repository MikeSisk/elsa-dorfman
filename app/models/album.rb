class Album < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 64 }
  
  has_many  :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if => :all_blank
end
