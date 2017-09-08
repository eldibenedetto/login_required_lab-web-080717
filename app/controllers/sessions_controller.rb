class SessionsController < ApplicationController

  before_action :require_login, only: :welcome

  def new

  end

  def create
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to  welcome_path
    else
      redirect_to login_path
    end

  end

  def welcome

  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to login_path
  end

end
