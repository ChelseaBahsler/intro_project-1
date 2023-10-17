class Cardset < ApplicationRecord
  has_many :locations
  has_many :cards

  validates :name, presence: true
end
