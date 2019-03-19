class CheckinsController < ApplicationController
  def create
    brewery = Brewery.find(params[:id])
    checkin = Checkin.new(brewery: brewery, user: current_user)
    if Checkin.where(brewery: brewery, user: current_user)[0].nil?
      if checkin.save
          p "saved"
      else
        p "failed to save"
      end
    end
  end
end
