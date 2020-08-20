class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates_uniqueness_of :dose, scope: [:cocktails,:ingredients]
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
end
