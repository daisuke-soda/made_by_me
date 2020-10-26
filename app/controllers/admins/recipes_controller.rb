class Admins::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.page(params[:page]).per(6)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to admins_recipes_path
  end
end
