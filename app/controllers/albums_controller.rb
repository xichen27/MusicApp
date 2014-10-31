class AlbumsController < ApplicationController
	# def index
	# 	@bands = Band.all	
	# end

	def new
		@album = Album.new
		render :new
	end

	def show
		@album = Album.find(params[:id])
	end

	def create
		@album = Album.new(album_params)
		if @album.save
			band = Band.find(@album.band_id)
			redirect_to band_url(band)
		else
			render :new
		end
	end

	private
	def album_params
		params.require(:album).permit(:name, :band_id, :ttype)
	end
end
