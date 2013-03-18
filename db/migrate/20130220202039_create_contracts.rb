class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :code
      t.integer :property_id
      t.integer :owner_id
      t.integer :lessee_id
      t.date :initial_date
      t.date :final_date
      t.integer :pay_day
      t.decimal :rate_commission

      t.timestamps
    end
  end
end
