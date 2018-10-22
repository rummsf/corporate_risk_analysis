class SanctionedEntity < ApplicationRecord
  belongs_to :company
  belongs_to :director
end
