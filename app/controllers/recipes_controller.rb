class RecipesController < ApplicationController
  def index
    @search_recipes = Recipe.page(params[:page]).per(3)
    @genres = Genre.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save!
    params[:recipe][:steps_attributes].permit!.to_h.each.with_index(1) do |s,index|
    @recipe.steps.create!(description: s[1]["description"],step_image: s[1]["step_image"],step_order: index )
    end
    redirect_to recipe_path(@recipe)
  end

  def new
    @recipe = Recipe.new
    @steps = @recipe.steps.build
    @genres = Genre.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    @comments = @recipe.comments
    @steps = @recipe.steps
    @genres = Genre.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @genres = Genre.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :recipe_image, :introduction, :cost, :time, :material, steps_attributes: [:id, :recipe_id, :step_image, :description, :step_order, :_destroy])
  end

end
