require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:username => 'Ykat',
	:password => '',
	:database => 'todo',
	:encoding => 'utf8'

	)

require_relative "todo"

get "/" do
@todos = Todo.all
	erb :index
end	


get "/new_todo" do
	erb :new_todo
end	



post "/new_todo" do

	@todo = Todo.new(:name => params[:todo_name], :description => params[:todo_description],
		:tags => params[:todo_tags])
	if @todo.save
													#process the form data for a new book. 
 	redirect "/" 
 else
 	erb :new_todo
 end	
end