class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    # DSL for creating a tables
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.timestamps
    end
  end
end
