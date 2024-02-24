class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
