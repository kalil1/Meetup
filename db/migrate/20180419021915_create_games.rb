class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.time :time
      t.integer :teams
      t.integer :players
      t.text :sp_rules

      t.timestamps
    end
  end
end
