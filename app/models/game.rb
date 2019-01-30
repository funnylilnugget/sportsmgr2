class Game < ApplicationRecord

  has_many :teams
  has_many :stat_try

end
