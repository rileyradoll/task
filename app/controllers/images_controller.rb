class ImagesController < ApplicationController
  def index
  end

  def new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to :action => :show, :id => @image.id
    else
      render 'new'
    end
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
