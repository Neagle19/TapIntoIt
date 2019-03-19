class Notif < ApplicationRecord
  belongs_to :notifable, polymorphic: true
end
