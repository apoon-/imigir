class PicturesController < ApplicationController
  def index
    @pictures = [
      {
        :title => "The old church on the coast of the White sea",
        :artist => "Sergey Ershov",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      },
      {
        :title => "Sea Power",
        :artist => "Stephen Scullion",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },
      {
        :title => "Into the Poppies",
        :artist => "John Wilhelm",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
      }
    ]
  end
  def show
    @pictures = [
      {
        :title => "The old church on the coast of the White sea",
        :artist => "Sergey Ershov",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      },
      {
        :title => "Sea Power",
        :artist => "Stephen Scullion",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },
      {
        :title => "Into the Poppies",
        :artist => "John Wilhelm",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
      }
    ]
    @picture = @pictures[params[:id].to_i]
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
