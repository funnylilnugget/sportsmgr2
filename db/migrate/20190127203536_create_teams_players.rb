class CreateTeamsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :teams_players do |t|
      t.references :team, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
