class NavigationCell < Cell::Rails
include Devise::Controllers::Helpers
helper_method :admin_signed_in?
  class NavLink 
    attr_accessor :dest, :label, :resource, :selected
    def initialize(dest, label, resource, selected = false)
      self.dest, self.label, self.resource, self.selected = dest, label, resource, selected
    end  
  end
  
  # def all_lines
  #   @ginsburge_stops = [NavLink.new(ginsburge_sale_path, 'Ginsburge on sale')]
  #   @ginsburge_stops.concat(Album.all.map {|s| NavLink.new(s, s.name)})
  #   
  #   
  #   @no_hair_day_stops = Album.all + Album.all
  #   
  #   @portraits_stops = Album.all.map {|s| NavLink.new(s, s.name)}
  #   @portraits_stops << NavLink.new(about_camera_path, 'About the camera')
  #   
  #   @essays = Album.all + Album.all + Album.all
  #   @friends = Album.all + Album.limit(4)
  #   render
  # end

  def primary_tabs
    @links = {}
    Category.ordered.all.each do |c|
      # c = Category.where(:name => name).first
      album = c.first_album
      @links[c] = album
    end
    
    @categories = Category.ordered.all
    #if params[:category_id]
      #@selected_category = Category.find(params[:category_id])
      #render
    #end
    @selected_category_name = params[:category_id] ? Category.find(params[:category_id]).name : "uncategorized"
      render
  end
  
  def category
    logger.debug params
    @category = Category.where(:id => @opts[:category]).first
    return unless @category 
    @category_name = @category.name
    @links = []
    if @category
      @category.albums.ordered.each do |album|
        selected = album.id.to_s == params[:id]
        @links << NavLink.new(category_album_path(@category, album), album.menu_name, album, selected) unless album.hidden
      end
      render
    end
  end
  
  def subway_map
    @people_and_dogs = Album.where(:name => "People & Dogs").first
    @self_portraits  = Album.where(:name => "Self-Portraits").first
    @first_ginsberg  = Album.where(:name => "Ginsberg").first
    @first_no_hair_day  = Album.where(:name => "No Hair Day").first
    
    
    @ginsberg_on_sale = Album.by_name("Ginsberg on Sale")
    @remembering_allen = Album.by_short_name("Remembering Allen")
    
    @albums = Album.where("coordinates != ?", "").all
    render
  end
end
