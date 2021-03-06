require 'active_record'
require './todo'

ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'todomvc.db'

ActiveRecord::Base.connection.create_table 'todos',
	force: true do |table|
		table.string :todo_item
		table.boolean :complete
		table.boolean :edit, default: false
	end

ActiveRecord::Base.connection.create_table 'categories',
	force: true do |table|
		table.string :category
		table.boolean :complete
		table.boolean :edit, default: false
	end	