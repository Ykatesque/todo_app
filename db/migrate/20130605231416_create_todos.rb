class CreateTodos < ActiveRecord::Migration
  def up
  	create_table :todo do |t|
  		t.string :name
  		t.string :description
  		t.boolean :status, :default => false
  		 #t.text (long text) #t.integer
  		
  	end	#end closes the 'do' block 
  end

  def down
  	drop_table :todo
  end
end
