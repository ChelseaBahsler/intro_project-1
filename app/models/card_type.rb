class CardType < ApplicationRecord
  belongs_to :card
  belongs_to :types
  # has_many :types
end
