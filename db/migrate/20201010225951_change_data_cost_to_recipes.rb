class ChangeDataCostToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :cost, :string
  end
end
