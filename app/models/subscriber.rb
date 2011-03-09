class Subscriber < ActiveRecord::Base
  validates :name, :address1, :city, :state, :postal_code, :country, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true
end
