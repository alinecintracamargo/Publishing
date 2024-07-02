class Book < ApplicationRecord
  belongs_to :author
  has_many :parts
  has_one :assembly
end
