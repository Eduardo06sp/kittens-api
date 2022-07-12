class Kitten < ApplicationRecord
  validates :name,
            :age,
            :cuteness,
            :softness,
            presence: true

  validates :age,
            :cuteness,
            :softness,
            numericality: true
end
