class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address

      # created_at + updated_at
      t.timestamps
    end
  end
end
