class Company < ApplicationRecord

    has_many :company_directors
    has_many :sanctioned_entities
    belongs_to :location
    has_many :directors, through: :company_directors

    include PgSearch
    pg_search_scope :search_by_name, against: [:name, :status],
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

end
