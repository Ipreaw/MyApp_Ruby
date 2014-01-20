class MemberController < ApplicationController
	def create
		repass = params[:Re_Password]
		pass = params[:members][:password]
		@member = Member.new(params[:members])
		if pass == repass
			if @member.save
				session[:member] = @member
				redirect_to root_path
			else
				render 'welcome/index'
			end
		else
			#redirect_to root_path(@member)
			@member.errors.add(:password ," and Re-Password is not equal!")
			render 'welcome/index'
		end
	end
	def login
		@member = Member.where("email = (?) and password = (?)",params[:member][:email],params[:member][:password])
		if @member.present?
			@member = Member.find(@member)
			#binding.pry
			session[:member] = @member
		end
		redirect_to root_path
	end
	def logout
		reset_session
		redirect_to root_path
	end
	
end
