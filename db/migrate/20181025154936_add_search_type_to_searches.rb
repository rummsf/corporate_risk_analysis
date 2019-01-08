class AddSearchTypeToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :search_type, :string
  end
end
