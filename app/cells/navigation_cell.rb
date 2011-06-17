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
    cats = %w[portraits essays no_hair_day ginsberg friends commutes]
    # cats.each do |name|
    Category.order('created_at asc').each do |c|
      # c = Category.where(:name => name).first
      album = c.first_album
      @links[c] = album
    end
    
    # @links = {
    #   :portraits   => Category.where(:name => 'portraits').first.first_album,
    #   :essays      => Category.where(:name => 'essays').first.first_album,
    #   :no_hair_day => Category.where(:name => 'no_hair_day').first.first_album,
    # }
    render
  end
  
  def category
    logger.debug params
    @category = Category.where(:id => @opts[:category]).first
    @links = []
    if @category
      @category.albums.each do |album|
        selected = album.id.to_s == params[:id]
        @links << NavLink.new(category_album_path(@category, album), album.name, selected)
      end
      render
    end
  end
  
  def subway_map
    render
  end
end
