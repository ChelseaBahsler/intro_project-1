class CardsetsController < ApplicationController
  has_many :locations
  validates :name, presence: true, uniqueness: true
end
