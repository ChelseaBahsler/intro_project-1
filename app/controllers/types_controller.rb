class TypesController < ApplicationController
  validates :name presence: true, uniqueness: true

  has_many :weaknesses
  has_many :cards, through: :weaknesses

  has_many :cardtypes
  has_many :cards. through: :cardtypes

  def index
  end

  def show
  end
end
