class ChangeDataTimeToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :time, :string
  end
end
