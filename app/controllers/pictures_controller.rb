class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def showById
    @picture = Picture.find(params[:id])
  end

  def save
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to pictures_url
    end
  end

  def new
   @picture = Picture.new
  end

  def editById
     @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end
