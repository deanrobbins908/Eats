class Reservation < ActiveRecord::Base
	belongs_to :meal
	has_many :seats, dependent: :destroy
	validates :meal_id, true
end
