# frozen_string_literal: true

# Controller for recipes
class RecipesController < ApplicationController
  def index
    recipe_client = RecipeRetriever.new()
    @recipes = recipe_client.recipes
  end

  def show
    recipe_client = RecipeRetriever.new()
    id = params[:id]
    @recipe = recipe_client.recipe(id)
  end

end
