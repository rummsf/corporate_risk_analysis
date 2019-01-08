class AddPostcodeToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :postcode, :string
  end
end
