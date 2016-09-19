class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :user_values
    has_many :values, through: :user_values
    has_many :market, through: :values

    has_many :comments
    has_many :publications

    has_many :hosted_guest_boxes, foreign_key: :host_id, class_name: "GuestBox"
    has_many :invited_guest_boxes, foreign_key: :guest_id, class_name: "GuestBox"
    has_many :hosted_guys, through: :hosted_connections, class_name: "User", source: :host
    has_many :invited_guys, through: :invited_connections, class_name: "User", source: :guest

    has_many :debate_rooms
    has_many :messages

    has_many :follower_connections, foreign_key: :follower_id, class_name: "Connection"
    has_many :followed_connections, foreign_key: :followed_id, class_name: "Connection"
    has_many :follower_guys, through: :follower_connections, class_name: "User", source: :follower
    has_many :followed_guys, through: :followed_connections, class_name: "User", source: :followed


end
