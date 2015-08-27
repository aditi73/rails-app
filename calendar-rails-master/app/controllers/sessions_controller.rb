class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			puts :user_id
			session[:user_id] = user.id
			redirect_to('/')
			puts "successful login"
		else
			redirect_to('/users/new')
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to('/login')
	end

end
