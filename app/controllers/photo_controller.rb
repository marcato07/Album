class PhotoController < ApplicationController
  def index
		@pagy, @photo =
		if params[:title]
			pagy(Photo.where('name LIKE ?', "%#{params[:title]}%"), items: 5)
		else
			pagy(Photo.all, time: 10)
		end
	end

		# Automagically load up the associated view.
		# app/views/houses/index.html.erb
		# All instance variables are shared with the view.

	def show
		@photo = Photo.find(params[:id])
	end
end
