class AlbumController < ApplicationController
	def index
		@album = Album.order(:title)
	end
		# Automagically load up the associated view.
		# app/views/houses/index.html.erb
		# All instance variables are shared with the view.

	def show
		@album = Album.find(params[:id])
	end
end
