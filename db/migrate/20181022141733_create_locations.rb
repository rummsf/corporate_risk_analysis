class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
