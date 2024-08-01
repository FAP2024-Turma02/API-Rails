class ChangeType < ActiveRecord::Migration[7.1]
  def up
    change_column :products, :price, :float
  end

  def down
    change_column :products, :price, :decimal
  end

end
