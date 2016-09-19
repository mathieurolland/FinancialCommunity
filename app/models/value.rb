class Value < ApplicationRecord
  belongs_to :market
  has_many :user_values
end
