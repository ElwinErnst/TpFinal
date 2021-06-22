class Meet < ApplicationRecord
  belongs_to :event, dependent: :destroy 
  belongs_to :speaker,dependent: :destroy 
  
  paginates_per 3
end
