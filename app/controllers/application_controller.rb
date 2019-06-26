class ApplicationController < ActionController::Base
  before_action :set_source, :configure_permitted_parameters

  def configure_permitted_parameters
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end

  # def current_user
  #   super || new
  #   # super || guest_user -> if user is logged in then use super implementation else do something else (guest_user)
  # end
end
