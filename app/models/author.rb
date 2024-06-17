# app/models/author.rb
class Author < ApplicationRecord
  validates :name, presence: true
end
