class Blogo::User < ActiveRecord::Base
  has_many :posts

  # has_secure_password

  # validates :password, presence: true, on: :create
  validates :unionid    , presence: true, uniqueness: true
  # validates :email   , presence: true, uniqueness: true
end
