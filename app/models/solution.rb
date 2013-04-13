class Solution < ActiveRecord::Base
	belongs_to :thesis
	belongs_to :student, foreign_key: 'student_id', class_name: 'User'
	belongs_to :university_leader, foreign_key: 'university_leader_id', class_name: 'User'

	validate :validate_referenced_thesis
	validate :validate_referenced_student
	validate :validate_referenced_university_leader

	attr_accessible :thesis_id, :student_id, :university_leader_id, :assignment

	def validate_referenced_thesis
		!Thesis.find(self.thesis_id).nil?
	rescue ActiveRecord::RecordNotFound
		false
	end

	def validate_referenced_student
		user = User.find(self.student_id)
		user && user.user_type == User::Type[:student][:id]
	rescue ActiveRecord::RecordNotFound
		false
	end

	def validate_referenced_university_leader
		university_leader = User.find(self.university_leader_id)
		university_leader && university_leader.user_type == User::Type[:university_leader][:id]
	rescue ActiveRecord::RecordNotFound
		false
	end
end

# == Schema Information
#
# Table name: solutions
#
#  id                   :integer          not null, primary key
#  thesis_id            :integer          not null
#  student_id           :integer          not null
#  university_leader_id :integer          not null
#  assignment           :text             not null
#
