class User < ActiveRecord::Base
  has_secure_password
  has_many :sources
end
