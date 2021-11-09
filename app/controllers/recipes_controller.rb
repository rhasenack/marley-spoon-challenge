require 'json'

class RecipesController < ApplicationController

  def index
    recipe_client = RecipeRetriever.new()
    @recipes = recipe_client.recipes
    raise
  end

  def show

  end

end
