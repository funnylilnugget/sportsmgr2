class TeamsPlayer < ApplicationRecord
  belongs_to :team, dependent: :destroy
  belongs_to :player, dependent: :destroy
end
