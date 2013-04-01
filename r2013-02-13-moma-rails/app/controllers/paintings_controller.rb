class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def create
    painting = Painting.create(params[:painting])
    redirect_to(painting)
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    painting = Painting.find(params[:id])
    artist.update_attributes(params[:painting])
    redirect_to(painting)
  end

  def destroy
     painting = Painting.find(params[:id])
    painting.delete
    redirect_to(paintings_path)
  end



end

