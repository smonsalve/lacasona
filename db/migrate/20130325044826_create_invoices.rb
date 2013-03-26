class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.decimal :value
      t.decimal :interest_value
      t.integer :contract_id
      t.date :invoice_date
      t.integer :month
      t.integer :year
      t.integer :invoice_status_id

      t.timestamps
    end
  end
end
