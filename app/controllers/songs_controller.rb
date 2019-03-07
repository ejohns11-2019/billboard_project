class SongsController < ApplicationController
  before_action :set_billboard_song
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @billboard_song.songs
  end

  def show
  end

  def new
    @song = @billboard_songs.songs.new
    render partial: 'song/form'
  end

  def edit
    render partial: 'song/form'
  end

  def create
    @song = @billboard_song.songs.new(song_params)
      if @song.save
        redirect_to [@billboard_song, @song]
      else
        render :new
      end
    end

    def update
      if @song.update(song_params)
        redirect_to [@billboard_song, @song]
      else
        render :edit
      end
    end

    def destroy
      @song.destroy
      redirect_to billboard_song_songs_path
    end

  private
    def set_billboard_song
      @billboard_song = Billboard_song.find(params[:billboard_song_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:song, :album)
    end
end
