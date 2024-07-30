class AddTypeToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :type, :string
  end
end
