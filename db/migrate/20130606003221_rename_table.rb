class RenameTable < ActiveRecord::Migration
  def up
  	   rename_table :todo, :todos
  end

  def down
  	rename_table :todos, :todo
  end
end
