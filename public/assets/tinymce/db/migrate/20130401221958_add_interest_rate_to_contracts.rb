class AddInterestRateToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :interest_rate, :decimal
  end
end
