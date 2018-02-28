class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.sort_by { |a| a.name }
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).premit(:name, :genre, :style, :year_active_start, :year_active_end)
  end
end
