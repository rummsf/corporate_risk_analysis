class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
