class CreateTodoApps < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_apps do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
