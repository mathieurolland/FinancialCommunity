class GuestBox < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :host, class_name: "User"
  belongs_to :debate_room
  validates :guest, presence: true
  validates :host, presence: true
  validates :debate_room, presence: true
end
