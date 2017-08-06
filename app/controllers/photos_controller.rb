class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photo.create(photo_params)
    redirect_to place_path(@place)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to :back
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end

end
