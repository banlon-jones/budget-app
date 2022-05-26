class Category < ApplicationRecord
  has_many :entities
  validates :name, presence: true
  validates :icon, presence: true
end
