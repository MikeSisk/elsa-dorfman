class NavigationCell < Cell::Rails

  class NavLink 
    attr_accessor :dest, :label
    def initialize(dest, label)
      self.dest, self.label = dest, label
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

  def ginsburge
    render
  end

  def no_hair_day
    render
  end

  def portraits
    render
  end

  def essays
    render
  end

  def friends
    render
  end

end
