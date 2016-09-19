class Publication < ApplicationRecord
  belongs_to :market
  belongs_to :user
  has_many :comments, dependent: :destroy, inverse_of: :comment

  validates :content, presence: true
  validates :theme, presence: true

end
