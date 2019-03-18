class LikeBatchesController < ApplicationController
  def new
    @review = ReviewBatch.find(params[:id])
    if LikeBatch.where(user: current_user, review_batch: @review).count.zero?
      @like = LikeBatch.new(user: current_user, review_batch: @review)
      @like.save
      p "saved"
      p @like
    elsif !LikeBatch.where(user: current_user, review_batch: @review).count.zero?
      @like = LikeBatch.where(user: current_user, review_batch: @review).first
      @like.destroy
      p "destroyed"
    end
  end
end
