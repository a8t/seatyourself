class SeatingsController < ApplicationController

	def index
		@seating= Seating.all
		#or @booked?
	end

	def show
    @seating = Seating.find(params[:restaurant_id])
	end

	def new
		@seating= Seating.new

	end

	def create
		@seating= Seating.new
		@seating
	end


	def edit
		@seating= Seating.find(params[:id])
	end

	def update
		@seating= Seating.find(params[:id])
		if @seating.save
		redirect_to @seating
  end
	end

	def destroy
		@seating.destroy
	end
end
