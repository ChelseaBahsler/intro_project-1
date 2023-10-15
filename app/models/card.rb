class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  has_many :card_types
  has_many :types, through: :card_types

  validates :name, :artist, :imageurl, presence: true
end
