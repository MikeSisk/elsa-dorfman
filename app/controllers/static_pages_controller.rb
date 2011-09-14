class StaticPagesController < ApplicationController
  layout 'static'
  
  def home
    @page = Page.find_by_title('home')
  end

  def map
  end
  
  def about_elsa
  end

  def about_camera
  end

  def donate
  end

  def sitemap
    @albums = Album.order('albums.category_id ASC').all
  end
  
  def contact
    
  end
  
  def ginsburge_on_sale
    
  end
  
  def control_panel
    
  end
end
