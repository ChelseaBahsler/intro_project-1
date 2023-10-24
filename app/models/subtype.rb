class Subtype < ApplicationRecord
  has_many :card_subtypes
  has_many :cards, through: :card_subtypes

  validates :name, presence: true, uniqueness: true
end
