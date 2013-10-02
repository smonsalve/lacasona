class CreateInvoiceStatuses < ActiveRecord::Migration
  def change
    create_table :invoice_statuses do |t|
      t.string :description
      t.string :code_status

      t.timestamps
    end
  end
end
