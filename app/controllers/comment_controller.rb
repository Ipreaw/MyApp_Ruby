class CommentController < ApplicationController
	def  index
		@place = Place.find(params[:place_id])
		#binding.pry
	end
	def create
		#render :text => params
		@place = Place.find(params[:place_id])
		@comment = @place.comments.create(params[:comment])
		@comment.member_id = session[:member][:id]
		@comment.save
		redirect_to country_place_comment_index_path(@place.country,@place)
	end
	def history
		@places = Place.where(:member_id => session[:member][:id])
		@comments = Comment.where(:member_id => session[:member][:id])
		#binding.pry
		#render :text => @place
	end
end
