class CreateTodoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_lists do |t|
      t.string :heading
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end
