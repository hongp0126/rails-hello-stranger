class FoodCulture < ApplicationRecord
  has_many :users, through: :appointments
  has_many :appointments
  validates :nationality, presence: true, uniqueness: true
end
