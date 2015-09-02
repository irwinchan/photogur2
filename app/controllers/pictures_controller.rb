class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def showById
    @picture = Picture.find(params[:id])
  end

  def save
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  def new
  end
end
