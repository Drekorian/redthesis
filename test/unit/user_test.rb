require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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

