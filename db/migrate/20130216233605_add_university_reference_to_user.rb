class AddUniversityReferenceToUser < ActiveRecord::Migration
  	def up
		change_table :users do |t|
			t.references :university
	  	end
  	end

	def down
		remove_column :users, :university_id
	end
end
