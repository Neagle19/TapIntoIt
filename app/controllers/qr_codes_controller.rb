class QrCodesController < ApplicationController
  def new
  end

  def show
    @qr = RQRCode::QRCode.new("https://www.tapintoit.me/beers/beer_id/batches/#{params[:id]}")
  end

  def create
    @qr = RQRCode::QRCode.new('tapintoit.me')
  end

  # qr_code_params[:text], size: 4

  private

  def qr_code_params
    params.require(:qr_code).permit(:text)
  end
end
