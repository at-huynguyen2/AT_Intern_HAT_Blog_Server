# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fullname        :string(255)
#  username        :string(255)
#  email           :string(255)
#  avatar          :string(255)
#  description     :string(255)
#  password_digest :string(255)
#  access_token    :string(255)
#  confirm_token   :string(255)
#  birthday        :date
#  access          :boolean          default("0")
#  blocked         :boolean          default("1")
#  email_confirmed :boolean          default("0")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

describe User do
  context 'Validations' do

    it "username dont't must blank" do
      should validate_presence_of(:username)
    end

    it "password don't must blank" do
      should validate_presence_of(:password)
    end

  end

  context 'Create is not valid' do
    before { @user = FactoryGirl.build(:user) }
    subject { @user }
    it "Create is not valid" do
      expect(@user).to be_valid
    end
  end

end
