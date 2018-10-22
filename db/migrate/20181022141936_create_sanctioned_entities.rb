class CreateSanctionedEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :sanctioned_entities do |t|
      t.string :entity_type
      t.integer :entity_id
      t.string :name
      t.string :sanction_type

      t.timestamps
    end
  end
end
