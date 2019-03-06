class Zona < ApplicationRecord
  has_many :animals

  validates :nom,
            presence: true

  validates :clima,
            presence: true

  validates :temperatura,
            presence: true,
            numericality: { greater_than_or_equal_to: -20, less_than_or_equal_to: 60 }
  validates :humitat,
            presence: true,
            numericality: { greater_than_or_equal_to: 10, less_than_or_equal_to: 100 }
end
