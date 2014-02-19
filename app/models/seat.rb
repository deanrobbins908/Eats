class Seat < ActiveRecord::Base
	belongs_to :reservation
	validates :reservation_id, true
end
