class BandsController < ApplicationController

	def index
		@bands = Band.all	
	end

	def new
		render :new
	end


	def create
		@band = Band.new(band_params)
	end

	def show
		@band = Band.find(params[:id])
	end

	private
	def band_params
		params.require(:band).permit(:name)
	end

end
