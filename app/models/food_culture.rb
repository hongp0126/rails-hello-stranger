class FoodCulture < ApplicationRecord
  belongs_to :user
  belongs_to :appointment

  validates_uniqueness_of :user_id, scope: :appointment_id
  validates :nationality, presence: true, uniqueness: true
end
