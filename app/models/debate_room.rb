class DebateRoom < ApplicationRecord
  belongs_to :user
  belongs_to :market
  has_many :messages
  has_many :guest_boxes
end
