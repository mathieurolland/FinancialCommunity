class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :publication
  validates :content, presence: true
  validates :publication, presence: true
  validates :user, presence: true

end
