class CreateFiduciaries < ActiveRecord::Migration[5.0]
  def change
    create_table :fiduciaries do |t|
      t.string :fiduciary_name
      t.string :fiduciary_address
      t.integer :matter_id

      t.timestamps

    end
  end
end
