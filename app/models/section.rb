class Section < ActiveRecord::Base
	has_many :theses

	attr_accessible :name

	validates :name, {
		presence: true,
		length: { minimum: 1, maximum: 50 },
		uniqueness: true
	}
end

# == Schema Information
#
# Table name: sections
#
#  id   :integer          not null, primary key
#  name :string(50)       not null
#

