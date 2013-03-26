class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_number
      t.decimal :value
      t.date :paymen_date
      t.integer :invoice_id
      t.integer :payment_status_id

      t.timestamps
    end
  end
end
