class AddActivityIdToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :activity_id, :integer
  end
end
