class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  has_many :searches
  has_secure_password
end
