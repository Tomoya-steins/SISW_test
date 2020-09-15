class AddImageIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :image_id, :string
  end
end
