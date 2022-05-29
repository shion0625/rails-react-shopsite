class Destroy < ActiveRecord::Migration[6.1]
  def change
    drop_table :line_foods
    drop_table :orders
    drop_table :foods
    drop_table :restaurants
  end
end
