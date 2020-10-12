class RenameStepImageColumnToSteps < ActiveRecord::Migration[5.2]
  def change
    rename_column :steps, :step_image, :step_image_id
  end
end
