class CreateUniversitiesAvailableTheses < ActiveRecord::Migration
  def up
  	create_table :universities_available_theses do |t|
	  	t.references :university,	{ null: false }
		t.references :thesis,		{ null: false }
	  end
  end

  def down
	  drop_table :universities_available_theses
  end
end
