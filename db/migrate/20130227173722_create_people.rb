class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :card_id_number
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :cellphone
      t.integer :tax_regime_id
      t.integer :legal_nature_id

      t.timestamps
    end
  end
end
