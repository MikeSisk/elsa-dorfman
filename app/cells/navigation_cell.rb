class NavigationCell < Cell::Rails
  class NavLink 
    attr_accessor :dest, :label, :selected
    def initialize(dest, label, selected = false)
      self.dest, self.label, self.selected = dest, label, selected
    end  
  end
  
  def all_lines
    @ginsburge_stops = [NavLink.new(ginsburge_sale_path, 'Ginsburge on sale')]
    @ginsburge_stops.concat(Album.all.map {|s| NavLink.new(s, s.name)})
    
    
    @no_hair_day_stops = Album.all + Album.all
    
    @portraits_stops = Album.all.map {|s| NavLink.new(s, s.name)}
    @portraits_stops << NavLink.new(about_camera_path, 'About the camera')
    
    @essays = Album.all + Album.all + Album.all
    @friends = Album.all + Album.limit(4)
    render
  end

  def primary_tabs
    @links = {}
    Category.ordered.all.each do |c|
      # c = Category.where(:name => name).first
      album = c.first_album
      @links[c] = album
    end
    
    @categories = Category.ordered.all
    if params[:category_id]
      @selected_category = Category.find(params[:category_id])
      render
    end
  end
  
  def category
    logger.debug params
    @category = Category.where(:id => @opts[:category]).first
    return unless @category 
    @category_name = @category.name
    @links = []
    if @category
      @category.albums.each do |album|
        selected = album.id.to_s == params[:id]
        @links << NavLink.new(category_album_path(@category, album), album.menu_name, selected)
      end
      render
    end
  end
  
  def subway_map
    @people_and_dogs = Album.where(:name => "People & Dogs").first
    @self_portraits  = Album.where(:name => "Self-Portraits").first
    
    @ginsberg_on_sale = Album.by_name("Ginsberg on Sale")
    @remembering_allen = Album.by_name("Remembering Allen")
    render
  end
end
