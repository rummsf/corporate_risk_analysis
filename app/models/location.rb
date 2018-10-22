class Location < ApplicationRecord
  has_many :companies
  has_many :directors, through: :companies
  has_many :sanctioned_entities, through: :companies 
end
