class Type < ApplicationRecord
  # belongs_to :card_types
  has_many :card_types
  has_many :cards, through: :card_types

  validates :name, presence: true, uniqueness: true
end
