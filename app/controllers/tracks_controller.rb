class TracksController < ApplicationController

	def new
		@track = Track.new
		render :new
	end


	def create
		@track = Track.new(track_params)

		if @track.save
			album = Album.find(@track.album_id)
			redirect_to album_url(album)
		else
			render :new
		end
	end

	private
	def track_params
		params.require(:track).permit(:name, :album_id, :ttype, :lyrics)
	end
end
