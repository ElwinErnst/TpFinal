class Category < ApplicationRecord
    has_many :events
    has_many :themes
    has_many :speakers
    
    paginates_per 3
    
end
