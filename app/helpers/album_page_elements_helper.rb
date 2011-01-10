module AlbumPageElementsHelper
  def render_page_element(element)
    render :partial => "albums/page_element_styles/#{element.style}", :locals => {:element => element}
  end
end
