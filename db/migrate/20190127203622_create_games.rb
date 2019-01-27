class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :home_score
      t.integer :visitor_score
      t.date :game_date
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
