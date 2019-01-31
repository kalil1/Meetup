class Game < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  geocoded_by :address
after_validation :geocode
end
