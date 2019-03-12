class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
  end

  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :kind, :size, :alcohol_percentage, :description, :photo)
  end
end
