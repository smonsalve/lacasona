class FixPaymentDateNamePayments < ActiveRecord::Migration
  def up
    rename_column :payments, :paymen_date, :payment_date
  end

  def down
  end
end
