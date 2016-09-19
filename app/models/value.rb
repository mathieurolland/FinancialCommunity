class Value < ApplicationRecord
  belongs_to :market
  has_many :user_values
  validates :name, presence: true
  validates :market, presence: true
end
