class CreatePalyers < ActiveRecord::Migration[5.1]
  def change
    create_table :palyers do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
