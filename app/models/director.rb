class Director < ApplicationRecord
  has_many :company_directors
  has_many :sanctioned_entities
  has_many :companies, through: :company_directors
  has_many :locations, through: :companies
end
