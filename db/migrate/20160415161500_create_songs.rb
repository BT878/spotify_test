require_relative '../../config/application'

class CreateSongs < ActiveRecord::Migration
	def change
		create_table :songs do |x|
				x.integer :no
				x.string :title
				x.string :artist
				x.string :duration
		end
	end
end
