class LoginController < ApplicationController
  def new
  end

  def create
    access_token = params[:code]
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to controller: 'pictures', action: 'index'
  end
end
