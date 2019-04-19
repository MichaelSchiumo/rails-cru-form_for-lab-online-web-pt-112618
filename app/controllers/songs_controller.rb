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
  end    


  private

    def song_params
      params.require(:song).permit!
    end
end
