class Matter < ApplicationRecord
  belongs_to :user
  has_many :matter_docs, :dependent => :destroy
  has_many :assets, :dependent => :destroy
  has_many :beneficiaries, :dependent => :destroy
  has_many :fiduciaries, :dependent => :destroy
end
