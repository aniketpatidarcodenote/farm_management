class CreateVegetables < ActiveRecord::Migration[7.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.references :farmer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
