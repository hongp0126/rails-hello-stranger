class AddTitleDescriptionToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :title, :string
    add_column :appointments, :description, :string
  end
end
