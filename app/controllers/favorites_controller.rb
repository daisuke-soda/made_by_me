class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: [:create, :destroy]

  def index
    @favorites = Favorite.where(user_id: current_user.id).page(params[:page]).per(6)
    @genres = Genre.all
  end

  def create
    @favorite = current_user.favorites.create(recipe_id: params[:recipe_id])
    redirect_back(fallback_location: root_path)
end

def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = current_user.favorites.find_by(recipe_id: @recipe.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
end

  private
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
