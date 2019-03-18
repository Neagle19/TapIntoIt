class Batch < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer
  validates :bottled_date, presence: true
  validates :brewery, presence: true
  has_many :batches, through: :beer
  after_create :send_qr

  def send_qr
    UserMailer.welcome(self.brewery.user, self.id).deliver_now
  end
end
