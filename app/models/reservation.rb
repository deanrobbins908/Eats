class Reservation < ActiveRecord::Base
	belongs_to :meal
	has_many :seats, dependent: :destroy
	
end
