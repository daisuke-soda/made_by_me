class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.string :step_image
      t.text :description
      t.integer :step_order

      t.timestamps
    end
  end
end
