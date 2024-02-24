class Game < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :players

  geocoded_by :location
  after_validation :geocode
end
