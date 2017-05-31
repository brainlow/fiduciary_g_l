class CreateAssetDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :asset_docs do |t|
      t.integer :asset_id
      t.string :date
      t.string :doc_type

      t.timestamps

    end
  end
end
