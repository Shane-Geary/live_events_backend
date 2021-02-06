class Category < ApplicationRecord
    has_many :tickets, dependent: :destroy 
end
