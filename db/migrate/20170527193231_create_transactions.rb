class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :transaction_type
      t.float :amount
      t.string :description
      t.string :account
      t.string :payee
      t.float :shares
      t.integer :asset_id

      t.timestamps

    end
  end
end
