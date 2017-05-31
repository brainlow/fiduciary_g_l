class MatterDoc < ApplicationRecord
  belongs_to :matter
  mount_uploader :document, DocumentUploader
end
