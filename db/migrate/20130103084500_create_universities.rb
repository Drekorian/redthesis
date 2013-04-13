class CreateUniversities < ActiveRecord::Migration
	def change
		create_table :universities do |t|
			t.string :name,	{ null: false, limit: 100 }
		end
	end
end
