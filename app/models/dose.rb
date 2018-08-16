class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, uniqueness: { scope: :cocktail }

  @dose = Dose.where(ingredient_id: @ingredient.id)
  @doses.each do |dose|
    dose.destroy
  end
  @ingredient.destroy
end
