class Market < ApplicationRecord
  has_many :values, dependent: :destroy, inverse_of: :value
  has_many :user_values, through: :values
  has_many :debate_rooms
  has_many :publications
  validates :name, presence: true
end
