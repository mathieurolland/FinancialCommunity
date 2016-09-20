class DebateRoom < ApplicationRecord
  belongs_to :user
  belongs_to :market
  has_many :messages
  has_many :invited_guest_boxes, class_name: "GuestBox"
  has_many :hosted_guest_boxes, class_name: "GuestBox"
  validates :user, presence: true
  validates :market, presence: true
  validates :title, presence: true
end
