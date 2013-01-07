class Category < ActiveRecord::Base
  has_many :albums
 # validates_associated :album
 
 scope :ordered, order("categories.position ASC")
  def to_param
    "#{id}-#{name}"
  end
  def first_album
    albums.empty? ? '#' : albums.order(:position).first
  end
end
