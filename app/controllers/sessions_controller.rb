class SessionsController < ApplicationController
  skip_before_filter :check_session!

  def new
  end

  def create
    session[:user] = params[:username]
    redirect_to root_path
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
