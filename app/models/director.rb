class Director < ApplicationRecord
  has_many :company_directors
  has_many :sanctioned_entities
  has_many :companies, through: :company_directors
  has_many :locations, through: :companies

  include PgSearch
  pg_search_scope :search_by_name, against: [:name],
    using: {
      tsearch: {
        prefix: true,
        highlight: {
        start_sel: '<b>',
        stop_sel: '</b>',
        }
      }
    }

  def self.search(query)
    if query
      director = Director.find_by(name:query.upcase)
      where('name LIKE ?', "%#{director.name}%")
    else
      all
    end
  end
end
