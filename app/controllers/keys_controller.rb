require 'securerandom'

class KeysController < ApplicationController

  def new
    @key = Key.new
  end
  
  def generate
  	@key = Key.new
  	@key.key_num = SecureRandom.hex(10)
  	if @key.save
  		redirect_to key_path(@key)
  	else
  		render :new
  	end
  end

  def show
    @key = Key.find params[:id]
  end
end
