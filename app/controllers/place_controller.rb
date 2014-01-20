class PlaceController < ApplicationController
	respond_to :html
	def index
		#render :text => params
		@country = Country.find(params[:country_id])
		#binding.pry
		#@places = @country.places
	end
	def create
		#binding.pry
		#render :text => params.inspect

		@country = Country.find(params[:country_id])
		@place = @country.places.create(params[:place])
		@place.member_id = session[:member][:id]
		if @place.save
			@avatars = params[:avatar]
			#binding.pry
			if @avatars.presence
				@avatars.each do |a|
					#binding.pry
					@album = Albums.new
						@album.place = @place
					@album.avatar = a
					@album.save
					@album.avatar = File.open(@album.avatar.current_path)
					@album.save
					#binding.pry		
				end
			end
			redirect_to country_place_index_path(@country)
		else
			@places = @country.places
			render "index"
			#binding.pry
			#redirect_to country_place_index_path(@country)
		end
	end
	def destroy
		@place = Place.destroy(params[:id])
		redirect_to country_place_index_path(@place.country)
	end
	def edit
		@country = Country.find(params[:country_id])
		@place = Place.find(params[:id])
		@albums = @place.albumss
		#binding.pry
		#render :text => @place.inspect
	end
	def update
		@place = Place.find(params[:id])
		@place.update_attributes(params[:place])
		@avatars = params[:avatar]
		if @avatars.presence
			@albums = Albums.where(:place_id => @place.id)
			@albums.destroy_all
			#binding.pry
			@avatars.each do |a|
				#binding.pry
				@album = Albums.new
					@album.place = @place
				@album.avatar = a
				@album.save
				@album.avatar = File.open(@album.avatar.current_path)
				@album.save
				#binding.pry		
			end
		end
		redirect_to country_place_index_path(@place.country)
	end
end
