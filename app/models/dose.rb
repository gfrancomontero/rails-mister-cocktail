class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient # WE DONT UNDERSTAND
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }

end
