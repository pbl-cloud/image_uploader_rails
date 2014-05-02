class ImagesController < ApplicationController
  before_filter :find_image

  def index
    @images = Image.all
  end


  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path
    else
      render :new
    end

  end



  private
  def find_image
    @image = Images.find(params[:id]) if params[:id]
  end

  def image_params
    params.require(:image).permit(:image)
  end
end
