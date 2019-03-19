class ReviewBatchesController < ApplicationController
  def new
    @review_batch = ReviewBatch.new
    @batch = Batch.find(params[:batch_id])
    @beer = @batch.beer
  end

  def create
    @review_batch = ReviewBatch.new(check_review_batch_params)
    @review_batch.user = current_user
    @review_batch.batch = Batch.find(params[:batch_id])
    @beer = @review_batch.batch.beer
    p "-"*40
    p @review_batch
    if @review_batch.save
      redirect_to beer_batch_path(@beer.id, @review_batch.batch)
    else
      render :new
    end
  end

  private

  def check_review_batch_params
    params.require(:review_batch).permit(:rating, :content)
  end
end
