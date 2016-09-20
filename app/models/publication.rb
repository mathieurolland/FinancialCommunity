class Publication < ApplicationRecord
  belongs_to :market
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :content, presence: true
  validates :theme, presence: true
  validates :market, presence: true

end
