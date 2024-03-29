class ArtistsController < ApplicationController
before_filter :check_if_admin, :except => [:index]

  def index
    @artists = Artist.order(:name)
  end

  def new
    @artist = Artist.new
  end

  def create
     @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to(artists_path)
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
    render :new
  end

  def update
    artist = Artist.find(params[:id])
    if artist.update_attributes(params[:artist])
       redirect_to(artists_path)
    else
      render
    end
  end
  def show
    @artist = Artist.find(params[:id])
  end
end