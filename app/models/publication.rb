class Publication < ApplicationRecord
  belongs_to :market
  belongs_to :user
  has_many :comments
end
