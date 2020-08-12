class Relationship < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :book, presence: true, uniqueness: true
  validates :user, presence: true
end
