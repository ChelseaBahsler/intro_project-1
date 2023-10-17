class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  has_many :card_types
  has_many :types, through: :card_types

  has_many :card_subtypes
  has_many :subtypes, through: :card_subtypes

  validates :name, :artist, :imageurl, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["card_subtypes", "card_types", "cardset", "subtypes", "supertype", "types"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["artist", "hp", "name", "text"]
  end
end
