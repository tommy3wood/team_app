class Team < ApplicationRecord
  has_many :players
  belongs_to :sport
end
