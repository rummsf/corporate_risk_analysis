class Director < ApplicationRecord
  has_many :company_directors
  has_many :sanctioned_entities
  has_many :companies, through: :company_directors
  has_many :locations, through: :companies

  include PgSearch
  pg_search_scope :search_by_name, against: [:name, :date_of_birth],
    using: {
      dmetaphone: {any_word: true, sort_only: true},
      tsearch: {
        any_word: true,
        prefix: true,
        highlight: {
        start_sel: '<b>',
        stop_sel: '</b>',
        }
      }
    }

    def age(dob)
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

end
