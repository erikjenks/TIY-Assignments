require 'active_record'

class Person < ActiveRecord::Base
	establish_connection adapter: 'sqlite3',
						 database: 'iron_roster.db'

	def to_s
	end 

end