class Spot < ApplicationRecord
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  CAT = ["Café", "Vue", "Parc", "Archi", "Shop", "Food", "Fripe", "Ecolo"]

  validates :name, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CAT }
  validates :description, presence: true
  validates_length_of :description, maximum: 99
  validates :photos, presence: true
end
