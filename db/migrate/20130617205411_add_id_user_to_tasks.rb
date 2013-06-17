class AddIdUserToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :id_user, :integer
  end
end
