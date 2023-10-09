class Type < ApplicationRecord
  has_many :cardtypes
  has_many :cards. through: :cardtypes
end
