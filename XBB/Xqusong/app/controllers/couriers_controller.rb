class CouriersController < ApplicationController
	before_filter :authenticate_courier!
	def index
	    @couriers = Courier.paginate(page: params[:page], per_page: 10).order(updated_at: :desc)
	end
end