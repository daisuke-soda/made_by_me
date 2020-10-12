class Admins::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to admins_recipes_path
  end
end
