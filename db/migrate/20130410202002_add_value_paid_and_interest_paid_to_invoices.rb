class AddValuePaidAndInterestPaidToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :value_paid, :decimal
    add_column :invoices, :interest_paid, :decimal
  end
end
