class RecipesController < ApplicationController
  respond_to :json

  def index
    @recipes = Recipe.all.shuffle[0..20]
    respond_to do |format|
      format.json { render :json => @recipes.map(&:attributes) }
    end
  end

  def show
    @recipe = Recipe.find params[:id]
    respond_to do |format|
      format.json { render :json => @recipe.attributes }
    end
  end
end