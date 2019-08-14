class CreateTurns < ActiveRecord::Migration[5.2]
  def change
    create_table :turns do |t|
      t.datetime :arrivaltime
      t.datetime :departuretime
      t.string :isturncompleted
      t.string :ispaid
      t.integer :amountpaid

      t.timestamps
    end
  end
end
