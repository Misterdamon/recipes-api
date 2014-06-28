class KeysController < ApplicationController

  def new
    @key = Key.new
  end

  def create
  end

  def show
    @key = Key.find params[:id]
  end
end