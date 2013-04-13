class AddSectionReferenceToThesis < ActiveRecord::Migration
	def up
		change_table :theses do |t|
			t.references :section
		end
	end

	def down
		remove_column :theses, :section_id
	end
end
