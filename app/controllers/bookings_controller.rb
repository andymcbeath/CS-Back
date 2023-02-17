class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings.as_json
  end

  def create
    booking = Booking.create(
      firstName: params[:firstName],
      lastName: params[:lastName],
      email: params[:email],
      event: params[:event],
    )
    render json: booking.as_json
  end
end
