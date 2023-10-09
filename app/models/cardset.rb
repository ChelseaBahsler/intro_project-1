class Cardset < ApplicationRecord
  has_many :locations
  has_many :cards
end
