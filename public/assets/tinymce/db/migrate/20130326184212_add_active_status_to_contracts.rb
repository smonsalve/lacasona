class AddActiveStatusToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :active, :boolean
  end
end
