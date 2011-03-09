class NavigationCell < Cell::Rails

  def all_lines
    @ginsburge_stops = Album.all
    @no_hair_day_stops = Album.all + Album.all
    @portaits_stops = Album.all + Album.limit(2)
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
