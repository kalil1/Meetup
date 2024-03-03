class AddLatitudeAndLongitudeToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :latitude, :float
    add_column :players, :longitude, :float
  end
end
