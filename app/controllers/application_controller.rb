class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :set_search

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end

  def set_search
    @search = Recipe.ransack(params[:q])
    @search_recipes = @search.result.page(params[:page]).per(9)
  end
end
