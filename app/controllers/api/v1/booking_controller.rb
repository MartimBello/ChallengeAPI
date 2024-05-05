class Api::V1::BookingController < ApplicationController
  def index
    bookings = Booking.all
    render json: BookingSerializer.new(bookings).serializable_hash.to_json, status: 200
  end

  def show
    booking = Booking.find(params[:id])
    render json: BookingSerializer.new(booking).serializable_hash.to_json, status: 200
  end

  def create
    validate_parameters
    #find the rv
    rv = Rv.find(params[:rv_id])

    #get the duration
    start_date = Date.strptime(params[:start_date], '%d/%m/%Y')
    end_date = Date.strptime(params[:end_date], '%d/%m/%Y')

    duration = end_date - start_date
    #calculate total cost
    total_price = rv.daily_rate * duration

    booking = Booking.create(
        rv_id: params[:rv_id],
        user_id: params[:user_id],
        start_date: start_date,
        end_date: end_date,
        total_price:total_price
    )

    render json: BookingSerializer.new(booking).serializable_hash.to_json, status: 201
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    render json: {message: "Booking is deleted"}, status: 200
  end

  def update
    validate_parameters
    #find the rv
    rv = Rv.find(params[:rv_id])
    #get the duration
    start_date = Date.strptime(params[:start_date], '%d/%m/%Y')
    end_date = Date.strptime(params[:end_date], '%d/%m/%Y')

    duration = end_date - start_date

    #calculate total cost
    total_price = rv.daily_rate * duration
    booking = Booking.find(params[:id])

    booking.update(
      rv_id: params[:rv_id],
      user_id: params[:user_id],
      start_date: start_date,
      end_date: end_date,
      total_price: total_price,
      status: params[:status]
    )
    render json: BookingSerializer.new(booking).serializable_hash.to_json, status: 200
  end

  private
  def validate_parameters
    if !(params[:rv_id].present? and params[:user_id].present? and params[:start_date].present? and
      params[:end_date].present?)
      raise ActionController::BadRequest.new(), "Parameter missing in request body."
    end
    #get the duration
    start_date = Date.strptime(params[:start_date], '%d/%m/%Y')
    end_date = Date.strptime(params[:end_date], '%d/%m/%Y')

    duration = end_date - start_date
    if duration < 0
      raise ActionController::BadRequest.new(), "The start date needs to be before the end date."
    elsif duration == 0
      raise ActionController::BadRequest.new(), "There is a minimum one day rental period."
    end
  end
end
