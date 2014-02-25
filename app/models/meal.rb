class Meal < ActiveRecord::Base
	belongs_to :user
	
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence:true
	validates :title, presence:true, length: { maximum: 70}
	validates :content, presence:true, length: { maximum: 500}
	validates :price, presence:true
	validates :mealtype, presence:true
	validates :city, presence: true
end
