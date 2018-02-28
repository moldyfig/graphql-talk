class AlbumsController < ApplicationController

  def index
    @albums = Album.all.sort_by { |a| a.artist.name }
  end

  def new
    @album = Album.new
  end

  def show
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  private

  def album_params
    params.require(:album).premit(:title, :artist, :year)
  end
end
