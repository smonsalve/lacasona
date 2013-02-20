class AddVisibleToPages < ActiveRecord::Migration
  def change
    add_column :pages, :visible, :boolean
  end
end
