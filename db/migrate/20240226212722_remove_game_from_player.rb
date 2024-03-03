class RemoveGameFromPlayer < ActiveRecord::Migration[7.1]
  def change
    remove_reference :players, :game, index: true, foreign_key: true
  end
end
