class Message < ApplicationRecord
  belongs_to :debate_room
  belongs_to :user
  validates :content, presence: true
  validates :debate_room, presence: true
  validates :user, presence: true
end
