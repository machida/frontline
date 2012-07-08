require 'spec_helper'

describe Join do

	describe "associations" do
		it { should belong_to(:party) }
		it { should belong_to(:user) }
	end

	describe "validations" do
		before { Factory(:join) }
		it { should validate_presence_of(:party_id) }
		it { should validate_presence_of(:user_id) }
		it { should validate_uniqueness_of(:party_id).scoped_to(:user_id) }
	end

end
