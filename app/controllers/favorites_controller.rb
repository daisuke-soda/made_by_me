class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: [:create, :destroy]

  def index
    @favorites = Favorite.where(user_id: current_user.id).page(params[:page]).per(6)
    @genres = Genre.all
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    favorite = @recipe.favorites.new(user_id: current_user.id)
    favorite.save
    
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    favorite = current_user.favorites.find_by(recipe_id: @recipe.id)
    favorite.destroy
  end

  private

  private
  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to books_path
    when 1
      redirect_to book_path(@book)
    end
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
