class Batch < ApplicationRecord
  belongs_to :brewery
  # belongs_to :beer
  validates :bottled_date, presence: true
  validates :brewery, presence: true

  after_create :send_qr

  def send_qr
    UserMailer.welcome(self.brewery.user)
  end
end
