class ReservationsController < ApplicationController

  # skip the check for the authenticity token which is generated by the form_with 
  # helper - we are submitting out form from our React frontend (eventually), so we won't have this token
  skip_before_action :verify_authenticity_token, raise: false

  def new

  end

  def create

    reservation = Reservation.create content: params[:content]

      if reservation.persisted?
          render json: reservation
      else
          render json: { error: 'Count not create reservation' }, status: 422
      end

  end

  def index
    render json: Reservation.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
