class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  has_many :card_types
  has_many :types, through: :card_types

  has_many :card_subtypes
  has_many :subtypes, through: :card_subtypes

  validates :name, :artist, :imageurl, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["artist", "cardset_id", "created_at", "hp", "id", "imageurl", "name", "supertype_id", "text",
     "updated_at"]
  end
end
