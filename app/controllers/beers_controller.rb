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
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)
    if @beer.save(beer_params)
      redirect_to @beer
    else
      render :new
    end
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

  def destroy       # DELETE /restaurants/:id
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :kind, :size, :alcohol_percentage, :description, :photo, :search)
  end
end
