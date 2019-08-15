class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :prodtype
      t.integer :discount
      t.integer :buyprice
      t.integer :sellprice
      t.integer :soldprice
      t.string :issold
      t.string :description

      t.timestamps
    end
  end
end
