class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  validates :name, :hp, :artist, :imageurl, presence: true
end
