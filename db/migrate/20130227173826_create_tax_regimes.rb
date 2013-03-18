class CreateTaxRegimes < ActiveRecord::Migration
  def change
    create_table :tax_regimes do |t|
      t.string :name
      t.decimal :tax_percentage

      t.timestamps
    end
  end
end
