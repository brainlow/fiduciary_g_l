class CreateBeneficiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiaries do |t|
      t.string :name
      t.string :address
      t.string :beneficiary_type
      t.float :residual_amount
      t.float :specific_amount
      t.integer :matter_id

      t.timestamps

    end
  end
end
