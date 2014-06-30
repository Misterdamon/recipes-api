class UsersController < ApplicationController
	def new
		if session[:id]
			redirect_to new_key_path
		else
			@user = User.new
		end
	end

	def create
		puts params[:user]
		@user = User.new(username: params[:user][:username])
		@user.password = params[:user][:password_hash]
		@user.save
		session[:id] = @user.id
		if session[:id]
			redirect_to new_key_path
		else
			redirect_to new_user_path
		end
	end

	def signin_attempt
		@user = User.new
		render :signin
	end

	def signin
		@user = User.find(params[:username])
		if params[:password_hash] == @user.password
			session[:id] = @user.id
			redirect_to new_key_path
		else
			render :signin
		end
	end

	def logout
		session[:id] = nil
		redirect_to root_path
	end
end