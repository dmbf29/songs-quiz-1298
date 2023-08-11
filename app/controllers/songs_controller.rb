class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # "/search?query=thriller"
  # def search
  #   # @songs = Song.where(title: params[:query])
  #   @songs = Song.where('title ILIKE ?', "%#{params[:query]}%")
  #   raise
  # end

  # "/songs/named/Thriller"
  def search
    # @songs = Song.where(title: params[:name])
    @songs = Song.where('title ILIKE ?', "%#{params[:name]}%")
    raise
  end

  private

  def song_params
    params.require(:song).permit(:title, :year, :category)
  end
end
