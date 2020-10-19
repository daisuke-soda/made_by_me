class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.recipe_id = @recipe.id
    if @comment.save
      flash[:success] = "コメントしました"
      redirect_to recipe_path(@recipe)
    else
      flash[:danger] = "コメントに失敗しました"
      redirect_to recipe_path(@recipe)
    end
  end

  def destroy
    Comment.find_by(id: params[:id], recipe_id: params[:recipe_id]).destroy
    redirect_to recipe_path(params[:recipe_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :user_id, :recipe_id)
  end
end