class CreateConsecutives < ActiveRecord::Migration
  def change
    create_table :consecutives do |t|
      t.integer :serie
      t.integer :consecutive_type_id

      t.timestamps
    end
  end
end
