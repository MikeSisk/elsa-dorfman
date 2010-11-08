class Image < ActiveRecord::Base
  
  belongs_to :imageable, :polymorphic => true
  
  has_attached_file :resource, 
    :styles => { :thumb => "128x128#" },
    :storage => :s3,
    :bucket => 'dorfman-development',
    :s3_credentials => { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET'] },
    :path => "/images/:style/:id/:filename"
  
  validates_attachment_presence :resource
  
  def url(size = nil)
    self.resource.url(size)
  end
  
end
