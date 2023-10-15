class CardType < ApplicationRecord
  belongs_to :card
  belongs_to :type
  # has_many :types
end
