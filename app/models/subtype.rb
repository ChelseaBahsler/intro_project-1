class Subtype < ApplicationRecord
  has_many :cardsubtypes
  has_many :cards. through: :cardsubtypes

end
