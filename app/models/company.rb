class Company < ApplicationRecord
    has_many :company_directors
    has_many :sanctioned_entities
    belongs_to :location
    has_many :directors, through: :company_directors
end
