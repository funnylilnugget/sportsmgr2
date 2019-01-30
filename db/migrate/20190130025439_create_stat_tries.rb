class CreateStatTries < ActiveRecord::Migration[5.2]
  def change
    create_table :stat_tries do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :try_point

      t.timestamps
    end
  end
end
