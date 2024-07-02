class Part < ApplicationRecord
  belongs_to :supplier
  belongs_to :book
  has_and_belongs_to_many :assemblies
end
