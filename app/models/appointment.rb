class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :food_culture

  validates_uniqueness_of :user_id, scope: :food_culture_id
  validates :random_name, :address, :date, presence: true
  validates :food_culture, :user, presence: true
  validates :random_name, uniqueness: true
end
