class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

end 
