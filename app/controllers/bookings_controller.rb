class BookingsController < ApplicationController
before_action :signed_in_user, only: [:create, :destroy]
before_action :correct_user,   only: :destroy
	


	def create
    @reservation = Reservation.new(reservation_params)
    if @user.save
      sign_in @user
      
      redirect_to @user
    else
      render 'new'
    end
  end

end


    def reservation_params
      params.require(:reservation).permit()
    end