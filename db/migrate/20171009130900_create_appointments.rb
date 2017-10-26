class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :random_name
      t.datetime :date
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
