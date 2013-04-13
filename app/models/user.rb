require 'digest/sha2'

class User < ActiveRecord::Base
	Type = {
		admin:				{ id: 1, string: I18n.translate('users.admin') },
		red_hat_leader:		{ id: 2, string: I18n.translate('users.red_hat_leader') },
		university_leader:	{ id: 3, string: I18n.translate('users.university_leader') },
		student:			{ id: 4, string: I18n.translate('users.student') },
	}

	Type[1] = Type[:admin]
	Type[2] = Type[:red_hat_leader]
	Type[3] = Type[:university_leader]
	Type[4] = Type[:student]

	belongs_to :university
	has_many :university_leader_solutions, foreign_key: 'red_hat_leader_id', class_name: 'Solution'
	has_many :student_solutions, foreign_key: 'student_id', class_name: 'Solution'
	has_many :theses_lead, foreign_key: 'red_hat_leader_id', class_name: 'Thesis'

	validates :user_type, {
		presence: true,
		numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }
	}

	validates :first_name, {
		presence: true,
		length: { minimum: 1, maximum: 30 },
	}

	validates :middle_names, {
		allow_nil: true,
		length: { maximum: 50 },
	}

	validates :last_name, {
		presence: true,
		length: { minimum: 1, maximum: 30 }
	}

	validates :email, {
		presence: true,
		length: { minimum: 6, maximum: 50 },
		uniqueness: true,
		format: /.+@.+/
	}

	attr_accessible(:user_type, :first_name, :middle_names, :last_name, :email, :password, :university_id)

	def password=(value)
		generate_salt
		self[:password] = Digest::SHA2.hexdigest(value + self[:salt])
	end

	def full_name
		result = first_name
		result += " #{middle_names}" if middle_names
		result += " #{last_name}"
	end

	def admin?
		self.user_type == User::Type[:admin][:id]
	end

	def red_hat_leader?
		self.user_type == User::Type[:red_hat_leader][:id]
	end

	def university_leader?
		self.user_type == User::Type[:university_leader][:id]
	end

	def student?
		self.user_type == User::Type[:student][:id]
	end

	def check_password(password)
		Digest::SHA2.hexdigest(password + salt) == self.password
	end

private
	def generate_salt
		range = random_range()
		length = range.length()

		self[:salt] = (1..16).map() { |x| range[rand(length)] }.join()
	end

	def random_range
		result = ('a'..'z').to_a()
		result += ('A'..'Z').to_a()
		result += (0..9).to_a()
	end
end

# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  user_type     :integer          not null
#  first_name    :string(30)       not null
#  middle_names  :string(50)
#  last_name     :string(30)       not null
#  email         :string(50)       not null
#  password      :string(255)      not null
#  salt          :string(16)       not null
#  university_id :integer
#
