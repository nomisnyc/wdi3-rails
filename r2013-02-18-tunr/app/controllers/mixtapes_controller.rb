class MixedtapesController < ApplicationController
before_filter :check_if_logged_in


 def index
    @mixtapes = Mixtape.order(:name)
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end
  def new
    @mixtape = Mixtape.new
  end
  def create
     @mixtape = Mixtape.new(params[:mixtape])
    if @mixtape.save
      redirect_to(mixtapes_path)
    else
      render :new
    end
  end

  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end

  def update
    mixtape = Mixtape.find(params[:id])
   if mixtape.update_attributes(params[:song])
      redirect_to(mixtapes_path)
    else
      render
    end
  end
end

