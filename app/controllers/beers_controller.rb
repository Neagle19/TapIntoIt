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
    @review_beers = ReviewBeer.where(beer_id: @beer.id)
  end

  def edit
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new beer_params
    @user = current_user
    @brewery = Brewery.where(user_id: @user.id)
    @beer.brewery = @brewery[0]
    if @beer.save!
      redirect_to beer_path(@beer)
    else
      render :new
    end
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :kind, :size, :alcohol_percentage, :description, :photo, :search)
  end
end
