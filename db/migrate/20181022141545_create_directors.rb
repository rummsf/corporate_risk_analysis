class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :jurisdiction_code
      t.string :position
      t.string :occupation
      t.string :company_name
      t.integer :company_number

      t.timestamps
    end
  end
end
