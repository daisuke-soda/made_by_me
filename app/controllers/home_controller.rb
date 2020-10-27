class HomeController < ApplicationController
  def top
    @genres = Genre.all
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @recipes = @genre.recipes
    else
      @recipes = Recipe.all
    end
    @recipes = Recipe.page(params[:page]).per(6)
  end

  def about
  end
end
