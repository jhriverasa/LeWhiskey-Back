class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :clientname
      t.string :waitername
      t.string :middlemanname
      t.integer :iva
      t.integer :service
      t.integer :subtotal
      t.integer :total
      t.date :date
      t.time :time
      t.string :waytopay
      t.string :description

      t.timestamps
    end
  end
end
