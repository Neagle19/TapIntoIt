class LikeBeersController < ApplicationController
  def new
    @review = ReviewBeer.find(params[:id])
    if LikeBeer.where(user: current_user, review_beer: @review).count.zero?
      like = LikeBeer.new(user: current_user, review_beer: @review)
      like.save
      p "saved"
      p like
    elsif !LikeBeer.where(user: current_user, review_beer: @review).count.zero?
      like = LikeBeer.where(user: current_user, review_beer: @review).first
      like.destroy
      p "destroyed"
    end
  end
end
