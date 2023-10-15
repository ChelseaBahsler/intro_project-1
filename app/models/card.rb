class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  has_many :card_types
  has_many :types, through: :card_types

  has_many :card_subtypes
  has_many :subtypes, through: :card_subtypes

  validates :name, :artist, :imageurl, presence: true
end
