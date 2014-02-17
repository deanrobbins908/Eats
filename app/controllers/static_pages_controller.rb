class StaticPagesController < ApplicationController
  def home
  	@meal = current_user.meals.build if signed_in?
  	
  end

  def help
  end

  def about
  end
  
end
