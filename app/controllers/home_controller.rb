class HomeController < ApplicationController
  def top
    @genres = Genre.all
    @recipes = Recipe.all
  end

  def about
  end
end
