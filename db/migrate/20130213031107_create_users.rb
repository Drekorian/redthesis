class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_type,		{ null: false, limit: 1 }
      t.string :first_name,		{ null: false, limit: 30 }
      t.string :middle_names,	{ limit: 50 }
      t.string :last_name,		{ null: false, limit: 30 }
      t.string :email,			{ null: false, limit: 50}
	  t.string :password,		{ null: false }
	  t.string :salt,			{ null: false, limit: 16 }
    end
  end
end
