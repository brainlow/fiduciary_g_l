class Asset < ApplicationRecord
  has_many :asset_docs, :dependent => :destroy
  has_many :transactions, :dependent => :destroy
  belongs_to :matter
end
