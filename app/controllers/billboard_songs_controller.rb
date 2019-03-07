class BillboardSongsController < ApplicationController
  before_action :set_billboard_song, only: [:show, :edit, :destroy, :update]

  def index
    @billboard_songs = BillboardSong.all
  end

  def show
  end

  def new
    @billboard_song = Billboard_song.new
    render partial: 'billboard_songs/form'
  end

  def create
    @billboard_song = Billboard_song.new(billboard_song_params)
      if @billboard_song.save
        redirect_to @billboard_song
      else
        render :new
      end
  end

  def edit
    render partial: 'billboard_songs/form'
  end

  def update
    if @billboard_song.update(billboard_song_params)
      redirect_to @billboard_song
    else
      render :edit
    end
  end

  def destroy
    @billboard_song.destroy
    redirect_to billboard_songs_path
  end

private
  def billboard_song_params
    params.require(:billboard_song).permit(:rank, :song)
  end

  def set_billboard_song
    @billboard_song = Billboard_song.find(params[:id])
  end

end
