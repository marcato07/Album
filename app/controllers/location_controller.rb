class LocationController < ApplicationController
	def index
		@pagy, @location =
		if params[:name]
			pagy(Location.where('name LIKE ?', "%#{params[:name]}%"), items: 5)
		else
			pagy(Location.all, time: 15)
		end
	end
	def show

		# @photo = Photo.find(params[:id])
		@location = Location.find(params[:id])
		# @photo = Photo.find(params[:@location.shortname])
	end
end


