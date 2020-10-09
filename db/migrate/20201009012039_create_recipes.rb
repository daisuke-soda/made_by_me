class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :name
      t.text :introduction
      t.string :recipe_image
      t.integer :cost
      t.integer :time
      t.text :material

      t.timestamps
    end
  end
end
