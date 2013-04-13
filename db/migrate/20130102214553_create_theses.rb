class CreateTheses < ActiveRecord::Migration
	def change
    	create_table :theses do |t|
			t.string  :name,				{ null: false, limit: 50 }
			t.integer	:thesis_type,		{ null: false, limit: 1 }
			t.text    :description,			{ null: false }
			t.integer :status,				{ null: false, limit: 1 }
			t.integer :red_hat_leader_id,	{ null: false }
	    end
  	end
end
