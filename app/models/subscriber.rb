class Subscriber < ActiveRecord::Base
  validates :name, :address1, :city, :state, :postal_code, :country, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true
  
  after_create :send_signup_notification
  def send_signup_notification
    MailingList.new_subscriber(self).deliver
  end
end
