class Thesis < ActiveRecord::Base
	Status = {
		available: { id: 1, string: I18n.translate('theses.available') },
		occupied:  { id: 2, string: I18n.translate('theses.occupied') },
		finished:  { id: 3, string: I18n.translate('theses.finished') }
	}

	Status[1] = Status[:available]
	Status[2] = Status[:occupied]
	Status[3] = Status[:finished]

	Type = {
		bachelor:			{ id: 1, string: I18n.translate('theses.bachelor') },
		master:				{ id: 2, string: I18n.translate('theses.master') },
		bachelor_or_master:	{ id: 3, string: I18n.translate('theses.bachelor_or_master') },
	}

	Type[1] = Type[:bachelor]
	Type[2] = Type[:master]
	Type[3] = Type[:bachelor_or_master]

	attr_accessible :description, :name, :thesis_type, :status, :section_id, :red_hat_leader_id
	belongs_to :red_hat_leader, foreign_key: 'red_hat_leader_id', class_name: 'User'
	belongs_to :section
	has_and_belongs_to_many :universities, :join_table => 'universities_available_theses'
	has_many :solutions

	validates :name, {
		presence: true,
		length: { minimum: 1, maximum: 100 },
		uniqueness: true
	}

	validates :thesis_type, {
		presence: true,
		numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
	}

	validates :description, {
		presence: true
	}

	validates :status, {
		presence: true,
		numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
	}

	validate :validate_referenced_section

	def validate_referenced_section
		!Section.find(self.section_id).nil?
	rescue ActiveRecord::RecordNotFound
		false
	end
end

# == Schema Information
#
# Table name: theses
#
#  id          :integer          not null, primary key
#  name        :string(50)       not null
#  thesis_type :integer          not null
#  description :text             not null
#  status      :integer          not null
#  section_id  :integer
#

