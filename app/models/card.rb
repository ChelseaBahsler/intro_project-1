class Card < ApplicationRecord
  belongs_to :supertype
  belongs_to :cardset

  validates :name, :artist, :imageurl, presence: true
end
