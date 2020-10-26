class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    @genres = Genre.all
    if params[:genre_id]
    @genre = Genre.find(params[:genre_id])
    @recipes = @genre.recipes
    @search_recipes = @genre.recipes.page(params[:page]).per(9)
    else
    @recipes = Recipe.all
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save!
    params[:recipe][:steps_attributes].permit!.to_h.each.with_index(1) do |s,index|
    @recipe.steps.create!(description: s[1]["description"],step_image: s[1]["step_image"],step_order: index )
    end
    redirect_to recipe_path(@recipe)
    else
      render :new
    end
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
    if @recipe.user != current_user
      redirect_to recipes_path, alert: '不正なアクセスです。'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    params[:recipe][:steps_attributes].permit!.to_h.each.with_index(1) do |s,index|
      if s[1]['_destroy'] == '1'
        if s[1]['id']
          @recipe.steps.find(s[1]['id']).destroy
        end
      else
        if s[1]['id']
          @recipe.steps.find(s[1]['id']).update(description: s[1]["description"],step_image: s[1]["step_image"],step_order: index )
        else
          @recipe.steps.create!(description: s[1]["description"],step_image: s[1]["step_image"],step_order: index )
        end
      end
      
    end
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:genre_id, :name, :recipe_image, :introduction, :cost, :time, :material, :tag_list)
  end

  def step_params_with_order
    hash = {}
    recipe_params[:steps_attributes].to_h.each.with_index(1) do |step, i|
      hash.store(i, step[1])
    end
    hash
  end
end