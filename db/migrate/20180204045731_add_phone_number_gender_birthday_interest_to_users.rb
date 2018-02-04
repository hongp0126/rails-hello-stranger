class AddPhoneNumberGenderBirthdayInterestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :gender, :string
    add_column :users, :Birthday, :date
    add_column :users, :Interest, :string
  end
end
