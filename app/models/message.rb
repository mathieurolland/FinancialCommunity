class Message < ApplicationRecord
  belongs_to :debate_room
  validates :content, presence: true
end
