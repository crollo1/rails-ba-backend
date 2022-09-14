class FlightsController < ApplicationController

    def new
        
    end #new

    def create
        secret = Flight.create content: params[:content]

        if flight.persisted?
            render json: flight
        else
            render json: { error: 'Count not create secret' }, status: 422
        end
    end #create

    def index
        render json: Flight.all
    end #index

    def show
        
    end # show

    # def update
        
    # end #update

    def destroy
        
    end #destroy

end
