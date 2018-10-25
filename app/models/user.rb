class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  has_secure_password
end
