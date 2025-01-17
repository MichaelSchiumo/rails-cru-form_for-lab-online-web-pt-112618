class SongsController < ApplicationController

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song = Song.update(song_params)
    redirect_to song_path(@path)
  end

  def new
    @song = Song.new
  end

  def index
    @song = Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
