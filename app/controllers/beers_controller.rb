class BeersController < ApplicationController

  def index
    if params[:search].present?
      @beers = Beer.global_search(params[:search])
    else
      @beers = Beer.all
    end
  end

  def show
    @beer = Beer.find(params[:id])
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :kind, :size, :alcohol_percentage, :description, :photo, :search)
  end
end
