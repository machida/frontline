require 'spec_helper'

describe User do

	describe "associations" do
		it { should have_many(:parties) }
		it { should have_many(:joins) }
		it { should have_many(:invited_parties).through(:joins) }
		it { should have_many(:tasks) }
		it { should have_many(:comments) }
	end

	describe "validations" do
		before { Factory(:user) }
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:password) }
		it { should validate_uniqueness_of(:email) }
	end

end
