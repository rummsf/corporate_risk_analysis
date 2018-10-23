class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :company_number
      t.string :status
      t.string :jurisdiction_code
      t.datetime :incorporation_date
      t.datetime :dissolution_date
      t.string :address
      t.integer :location_id
      
      t.timestamps
    end
  end
end
