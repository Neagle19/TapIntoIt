class Checkin < ApplicationRecord
  belongs_to :brewery
  belongs_to :user
  has_many :notif, as: :notifable
end
