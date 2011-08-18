Album.all.each do |album|
  album.album_pages.each do |page|
    page.album_page_elements.each do |element| 
      #build a new AlbumSection for this Album
      #  assign the new AlbumSection the element's narrative
      section = album.album_sections.build(:narrative => element.narrative)
      album.save
      element.images.each do |image|
        # assign the image's imageable_type and imageable_id to that of the new AlbumSection
        image.imageable_id = section.id
        image.imageable_type = section.class
      end
    end
  end
  album.save
end