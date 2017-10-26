class AddPriceParticipantToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :price, :integer
    add_column :appointments, :participant, :integer
  end
end
