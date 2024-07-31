class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.float :price
      t.boolean :is_promotion

      t.timestamps
    end
  end
end
