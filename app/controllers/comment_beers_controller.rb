
class CommentBeersController < ApplicationController
  def create
    comment = CommentBeer.new(beer_params)
    comment.user = current_user
    puts "-"*60
    puts params
    if comment.save
      puts "comment saved correctly"
      # redirect_to posts_path
    else
      puts "something went wrong when saving the comment"
      # redirect_to posts_path
    end
  end

  private

  def beer_params
    params.require(:comment_beer).permit(:content, :review_beer_id, :review_beer)
  end
end
