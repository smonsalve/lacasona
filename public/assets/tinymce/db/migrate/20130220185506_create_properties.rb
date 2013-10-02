class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :code
      t.integer :owner_id
      t.integer :stratum
      t.decimal :market_value
      t.decimal :rental_fee
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :phone
      t.decimal :appraisal
      t.integer :property_type_id

      t.timestamps
    end
  end
end
