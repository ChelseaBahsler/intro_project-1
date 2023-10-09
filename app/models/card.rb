class Card < ApplicationRecord
  belongs_to :supertypes
  belongs_to :cardsets
end
