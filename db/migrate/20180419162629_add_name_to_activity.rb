class AddNameToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :name, :string
  end
end
