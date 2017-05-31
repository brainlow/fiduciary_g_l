class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :asset_type
      t.float :asset_value
      t.integer :matter_id
      t.float :total_shares
      t.string :description
      t.string :asset_account
      t.float :market_value

      t.timestamps

    end
  end
end
