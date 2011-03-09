class ImagesController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @images = Image.all
    respond_with @images
  end

  def show
    @image = Image.find(params[:id])
    respond_with @image
  end

  def new
    @image = Image.new
    respond_with @image
  end

  def edit
    @image = Image.find(params[:id])
    respond_with @image
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      flash[:notice] = 'Image was successfully created.'
    end
    respond_with @image
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      flash[:notice] = 'Image was successfully updated.'
    end
    respond_with @image
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    respond_with @image
  end
end
