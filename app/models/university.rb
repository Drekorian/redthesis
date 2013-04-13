class University < ActiveRecord::Base
    has_many :users
	has_and_belongs_to_many :theses, :join_table => 'universities_available_theses'

	validates :name, {
		presence: true,
		length: { minimum: 1, maximum: 100 },
		uniqueness: true
	}

	attr_accessible :name
end

# == Schema Information
#
# Table name: universities
#
#  id   :integer          not null, primary key
#  name :string(100)      not null
#

