require 'json'

class RecipesController < ApplicationController

  def index
    recipe_client = RecipeRetriever.new()
    @recipes = recipe_client.recipes
    # raise
  end

  def show
    recipe_client = RecipeRetriever.new()
    id = params[:id]
    @recipe = recipe_client.recipe(id)
    # raise
  end

end
