class AddOsTypeToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :os_type, :string
    add_column :products, :voltage, :boolean
  end
end
