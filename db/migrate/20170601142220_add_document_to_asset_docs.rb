class AddDocumentToAssetDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :asset_docs, :document, :string
  end
end
