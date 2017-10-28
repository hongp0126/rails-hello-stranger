class RemoveUserAppointmentFromFoodCultures < ActiveRecord::Migration[5.0]
  def change
    remove_reference :food_cultures, :user, foreign_key: true
    remove_reference :food_cultures, :appointment, foreign_key: true
  end
end
