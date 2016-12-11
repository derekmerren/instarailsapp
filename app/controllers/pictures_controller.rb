class PicturesController < ApplicationController

  # GET /pictures
  # GET /pictures.json
  def index
    begin
      client = Instagram.client(:access_token => session[:access_token])
      @pictures = client.user_recent_media
    rescue Instagram::BadRequest => msg
      flash[:notice] = 'You must be logged into Instagram to see your pictures feed.'
    end
  end
end
