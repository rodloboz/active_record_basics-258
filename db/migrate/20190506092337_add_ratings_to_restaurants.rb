class AddRatingsToRestaurants < ActiveRecord::Migration[5.1]
  def change
    #          table_name   column_name type      options
    add_column :restaurants, :ratings, :integer, null: false, default: 0
  end
end
