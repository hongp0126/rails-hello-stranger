class CreateFoodCultures < ActiveRecord::Migration[5.0]
  def change
    create_table :food_cultures do |t|
      t.string :nationality
      t.references :user, foreign_key: true
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end
