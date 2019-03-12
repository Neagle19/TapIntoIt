class LikeBeersController < ApplicationController
  def new
    @review = ReviewBeer.find(params[:id])
    if LikeBeer.where(user: current_user, review_beer: @review).count.zero?
      like = LikeBeer.new(user: current_user, review_beer: @review)
      if like.save
        redirect_to posts_path
      else
        redirect_to posts_path
      end
    elsif !LikeBeer.where(user: current_user, review_beer: @review).count.zero?
      like = LikeBeer.where(user: current_user, review_beer: @review).first
      like.destroy
      redirect_to posts_path
    end
  end
end
