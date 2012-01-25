class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def sort
    Rails.logger.debug "HELLO HELLO HELLO HELLOO HELLO"
    Rails.logger.debug params.inspect
    model_name = params[:model].to_sym
    params[model_name].each_with_index do |id, index|
      params[:model].capitalize.constantize.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
end
