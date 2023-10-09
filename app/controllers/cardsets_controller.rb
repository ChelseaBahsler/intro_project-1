class CardsetsController < ApplicationController
  validates :name, presence: true, uniqueness: true
end
