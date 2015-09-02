class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def showById
    @picture = Picture.find(params[:id])
  end
end
