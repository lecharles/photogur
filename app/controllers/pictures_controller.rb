class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end
  #
  # def show
  #   @picture = Picture.find(params[:id])
  # end
  #
  # def create
  #   render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  # end
  def new
    @picture = Picture.new
  end

  def create
    # make a new picture with what picture_params returns (which is a method we're calling)
    @picture = Picture.new(picture_params)
    if @picture.save
      # if the save for the picture was successful, go to index.html.erb
      redirect_to pictures_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end



end
