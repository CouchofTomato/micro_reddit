class User < ActiveRecord::Base
  validates :username, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6, maximum: 15 }
  
  has_many :posts
  has_many :comments
end
