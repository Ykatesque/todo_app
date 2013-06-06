class AddDateToTodo < ActiveRecord::Migration
  def change
  	add_column :todo, :tags, :string
  end
end
