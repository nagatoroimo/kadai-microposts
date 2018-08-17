class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }

  has_many :reverses_of_favorites, class_name: "Favorite", foreign_key: "like_id"
  has_many :likers, through: :reverses_of_favorites, source: :user

end
