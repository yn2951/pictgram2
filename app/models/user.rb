class User < ActiveRecord::Base
  validates :name, length: { in: 1..15 }
  validates :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length: { in: 8..32 }
  validates :password, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  has_secure_password
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites,source: "topic"
end
