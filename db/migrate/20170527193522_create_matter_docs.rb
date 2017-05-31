class CreateMatterDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :matter_docs do |t|
      t.string :document
      t.string :document_type
      t.integer :matter_id

      t.timestamps

    end
  end
end
