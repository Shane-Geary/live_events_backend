class Ticket < ApplicationRecord
    belongs_to :category


    validates :title, presence: true
    validates :date, presence: true
    validates :main_act, presence: true
end
