class AddResultCountToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :result_count, :integer
  end
end
