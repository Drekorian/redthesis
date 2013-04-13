class CreateSolutions < ActiveRecord::Migration
	def change
    	create_table :solutions do |t|
			t.references :thesis,				{ null: false }
			t.integer :student_id,				{ null: false }
			t.integer :university_leader_id,	{ null: false }
			t.text :assignment,					{ null: false }
		end
	end
end
