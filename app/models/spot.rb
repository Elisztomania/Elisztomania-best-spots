class Spot < ApplicationRecord
  has_many_attached :photos

  CAT = ["Café", "Vue", "Parc", "Archi", "Shop"]

  validates :name, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CAT }
  validates :description, presence: true
  validates :photos, presence: true
end
