class CommentBatchesController < ApplicationController
   def create
    @comment = CommentBatch.new(batch_params)
    @comment.user = current_user
    @review_id = batch_params[:review_batch_id]
    puts "-"*60
    puts params
    if @comment.save
      puts "comment saved correctly"
      # redirect_to posts_path
    else
      puts "something went wrong when saving the comment"
      # redirect_to posts_path
    end
  end

  private

  def batch_params
    params.require(:comment_batch).permit(:content, :review_batch_id, :review_batch)
  end
end
