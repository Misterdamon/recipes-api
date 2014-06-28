class API::V1::RecipesController < ApplicationController


  def index
    @recipes = Recipe.all.shuffle[0..20]
    respond_to do |format|
      format.json { render :json => @recipes }
    end
  end

  def show
    @recipe = Recipe.find params[:id]
  end
end