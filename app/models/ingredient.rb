class Ingredient < ApplicationRecord
  has_many :doses # WE DONT UNDERSTAND
  validates :name, presence: true, uniqueness: true
end
