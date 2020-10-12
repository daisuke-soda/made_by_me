class RenameRecipeImageColumnToRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :recipe_image, :recipe_image_id
  end
end
