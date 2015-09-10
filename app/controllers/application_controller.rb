class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_session!

  private

  def check_session!
    redirect_to new_auth_sessions_path unless session[:user]
  end
end
