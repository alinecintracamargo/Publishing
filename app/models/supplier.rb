class Supplier < ApplicationRecord
  has_one :account
  validates :supplier_name, presence: true
end
