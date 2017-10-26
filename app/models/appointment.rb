class Appointment < ApplicationRecord
  belongs_to :user
  has_many :food_cultures
  validates :random_name, :address, :date, presence: true
  validates :random_name, uniqueness: true
end
