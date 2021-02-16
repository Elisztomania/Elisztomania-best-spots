class Spot < ApplicationRecord

  CAT = ["Café", "Vue", "Parc", "Archi"]

  validates :name, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CAT }
  validates :description, presence: true
end
