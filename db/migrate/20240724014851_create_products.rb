class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :photo
      t.boolean :is_promotion

      t.timestamps
    end
  end
end
