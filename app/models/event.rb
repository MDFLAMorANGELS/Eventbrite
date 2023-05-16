class Event < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }
    validates :price, presence: true, length: { maximum: 4 }
    validates :duration, presence: true, length: { maximum: 3 }
    validates :location, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 250 }
end
