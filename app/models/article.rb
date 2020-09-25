class Article < ApplicationRecord
  has_many :comments, dependents: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
