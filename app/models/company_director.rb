class CompanyDirector < ApplicationRecord
  belongs_to :director
  belongs_to :company
end
