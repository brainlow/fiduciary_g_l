class AssetDoc < ApplicationRecord
  belongs_to :asset
  mount_uploader :document, DocumentUploader
end
