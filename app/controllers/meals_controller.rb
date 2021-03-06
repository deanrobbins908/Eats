class MealsController < ApplicationController
before_action :signed_in_user, only: [:create, :destroy]
before_action :correct_user,   only: :destroy


def index
  @q = Meal.search(params[:q])
  @meals = @q.result(distinct:true)

end

def new
    @meal = Meal.new

end

def show
    @meal = Meal.find(params[:id])
    @user = @meal.user 
    
 
end



def create

	@meal = current_user.meals.build(meal_params)
    if @meal.save
      
      redirect_to @meal.user
    else
      redirect_to @meal.user
    end

end

def destroy
	@meal.destroy
    redirect_to @meal.user
end

def meal_params
  params.require(:meal).permit(:title, :content, :price, :mealtype, :city)
 end

def correct_user
      @meal = current_user.meals.find_by(id: params[:id])
      redirect_to root_url if @meal.nil?
    end

end
