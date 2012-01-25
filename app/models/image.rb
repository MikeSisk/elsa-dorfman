class Image < ActiveRecord::Base
  
  belongs_to :imageable, :polymorphic => true
  
  has_attached_file :resource, 
    # :styles => { :thumb => "128x128#", :small => "87x119#", :medium => "256x256>" },
    :styles => { :thumb => "128x128#", :small => "87x119#", :medium => "181x256>", :inline => "x256>" },
    :storage => :s3,
    :bucket => 'elsadorfman-production',
    :s3_credentials => { :access_key_id => ENV['DORFMAN_S3_KEY'], :secret_access_key => ENV['DORFMAN_S3_SECRET'] },
    :path => "/images/:style/:id/:filename"
  
  validates_attachment_presence :resource
  
  def url(size = nil)
    self.resource.url(size)
  end
  
end
