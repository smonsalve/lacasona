class CreateBalanceMovements < ActiveRecord::Migration
  def change
    create_table :balance_movements do |t|
      t.decimal :value
      t.integer :document_id
      t.integer :document_type_id
      t.date :movement_date

      t.timestamps
    end
  end
end
