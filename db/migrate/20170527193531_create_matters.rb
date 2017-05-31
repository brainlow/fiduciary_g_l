class CreateMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :matters do |t|
      t.string :name
      t.string :matter_type
      t.string :fiduciary_number
      t.integer :user_id

      t.timestamps

    end
  end
end
