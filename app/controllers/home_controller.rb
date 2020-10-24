class HomeController < ApplicationController
  def top
    @genres = Genre.all
    @recipes = Recipe.page(params[:page]).per(3)
  end

  def about
  end
end
