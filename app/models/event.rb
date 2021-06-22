class Event < ApplicationRecord
  belongs_to :category
  has_many :meets
  has_many :users, through: :inscriptions

  paginates_per 3
end
