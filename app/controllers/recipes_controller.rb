
class RecipesController < ApplicationController
# respond_to :json

  def index
    if Key.where(key_num: params[:api_key]).first
      @recipes = Recipe.all.shuffle[0..20]
      respond_to do |format|
        format.json { render :json => @recipes.map(&:attributes) }
      end
    else
      respond_to do |format|
        format.json {render json: "Invalid Api Key"}
      end
    end
  end

  def show
    if Key.where(key_num: params[:api_key]).first
      @recipe = Recipe.find params[:id]
        respond_to do |format|
          format.json { render :json => @recipe.attributes }
        end
    else
      respond_to do |format|
        format.json {render json: "Invalid Api Key"}
      end
    end
  end
end