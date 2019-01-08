class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :query
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
