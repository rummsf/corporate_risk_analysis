class Director < ApplicationRecord
  has_many :company_directors
  has_many :sanctioned_entities
  has_many :companies, through: :company_directors
  has_many :locations, through: :companies

  def self.search(query)
    if query
      director = Director.find_by(name:query.upcase)
      where('name LIKE ?', "%#{director.name}%")
    else
      all
    end
  end
end
