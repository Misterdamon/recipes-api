require 'securerandom'

class KeysController < ApplicationController

  def new
    @key = Key.new
  end
  
  def generate
    @user = User.find(session[:id])
  	@key = Key.new
  	@key.key_num = SecureRandom.hex(10)
  	if @key.save
      @user.keys << @key
  		redirect_to key_path(@key)
  	else
  		render :new
  	end
  end

  def show
    @key = Key.find params[:id]
  end
end
