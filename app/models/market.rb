class Market < ApplicationRecord
  has_many :values
  has_many :user_values, through: :values
end
