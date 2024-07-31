class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :color
      t.string :owner
      t.string :department

      t.timestamps
    end
  end
end
