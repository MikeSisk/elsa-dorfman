class SubscribersController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_admin!, :except => [:new, :create]
  
  def index
    @subscribers = Subscriber.all
    respond_with @subscribers
  end

  def show
    @subscriber = Subscriber.find(params[:id])
    respond_with @subscriber
  end

  def new
    @subscriber = Subscriber.new
    respond_with @subscriber
  end

  def edit
    @subscriber = Subscriber.find(params[:id])
    respond_with @subscriber
  end

  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      flash[:notice] = 'Thank you for signing up!'
      redirect_to root_url
    else
      respond_to @subscriber
    end
  end

  def update
    @subscriber = Subscriber.find(params[:id])
    if @subscriber.update_attributes(params[:subscriber])
      flash[:notice] = 'Subscriber was successfully updated.'
      redirect_to subscribers_url
    else
      respond_with @subscriber
    end
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
    respond_with @subscriber
  end
end
