class Speaker < ApplicationRecord
  belongs_to :category
  paginates_per 3
end
