class ReviewBeersController < ApplicationController
  def new
    @review_beer = ReviewBeer.new
    @beer = Beer.find(params[:beer_id])
  end

  def create
    @review_beer = ReviewBeer.new(check_review_beer_params)
    @review_beer.user = current_user
    @review_beer.beer = Beer.find(params[:beer_id])
    p "-"*40
    p @review_beer
    if @review_beer.save
      redirect_to beer_path(@review_beer.beer)
    else
      render :new
    end
  end

  private

  def check_review_beer_params
    params.require(:review_beer).permit(:rating, :content, :photo)
  end
end
