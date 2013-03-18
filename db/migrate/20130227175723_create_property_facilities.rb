class CreatePropertyFacilities < ActiveRecord::Migration
  def change
    create_table :property_facilities do |t|
      t.integer :property_id
      t.integer :facilities_id
      t.integer :quantity

      t.timestamps
    end
  end
end
