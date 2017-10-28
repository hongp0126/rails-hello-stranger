class AddFoodCultureToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :food_culture, foreign_key: true
  end
end
