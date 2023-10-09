class CardsController < ApplicationController
  validates :name :hp :artist :imageurl, presence: true
  def index
  end

  def show
  end
end
