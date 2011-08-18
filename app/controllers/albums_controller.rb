class AlbumsController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate_admin!, :except => [:index, :show]
  
  def index
    @albums = Album.order('albums.category_id ASC').all
    respond_with @albums
  end

  def show
    @album = Album.find(params[:id])
    respond_with @album
  end

  def new
    @album = Album.new
    respond_with @album
  end

  def edit
    @album = Album.find(params[:id])
    respond_with @album
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:notice] = 'Album was successfully created.' 
    end
    #respond_with @album
    if @album.category
      redirect_to category_album_path(@album.category, @album)
    else
      redirect_to @album
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:notice] = 'Album was successfully updated.'
    end
    # respond_with @album
    if @album.category
      redirect_to category_album_path(@album.category, @album)
    else
      redirect_to @album
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    respond_with @album
  end
end
