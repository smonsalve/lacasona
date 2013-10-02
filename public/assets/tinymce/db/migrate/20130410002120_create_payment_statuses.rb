class CreatePaymentStatuses < ActiveRecord::Migration
  def change
    create_table :payment_statuses do |t|
      t.string :description
      t.string :code_status

      t.timestamps
    end
  end
end
