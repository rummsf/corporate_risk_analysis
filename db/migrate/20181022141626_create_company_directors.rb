class CreateCompanyDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :company_directors do |t|
      t.integer :company_id
      t.integer :director_id
      t.string :position

      t.timestamps
    end
  end
end
