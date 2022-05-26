class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  validates :name, length: { maximum: 250 }, presence: true
  validates :amount, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true
end
