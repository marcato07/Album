class AlbumController < ApplicationController
	def index
		@pagy, @album =
		if params[:title]
			pagy(Album.where('name LIKE ?', "%#{params[:title]}%"), items: 5)
		else
			pagy(Album.all, time: 15)
		end
	end

		# Automagically load up the associated view.
		# app/views/houses/index.html.erb
		# All instance variables are shared with the view.

	def show
		@album = Album.find(params[:id])
	end
end
