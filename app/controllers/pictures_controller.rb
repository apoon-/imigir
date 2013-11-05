class PicturesController < ApplicationController
  
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new 
  end

  def create
    render :text => "Saving your picture. TITLE: #{params[:title]}, ARTIST: #{params[:artist]}, URL: #{params[:url]}"
  end

  # private

  # def picture_params
  #   params.require(:picture).permit(:title, :author, :url)
  # end

end
