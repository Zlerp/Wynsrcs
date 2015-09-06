class User < ActiveRecord::Base
  has_secure_password
  has_many :sources

  validates :username, :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: true
end
