class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :done
      t.datetime :date

      t.timestamps
    end
  end
end
