class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :random_name, :restaurant_name
  end
end
