require 'spec_helper'

describe Comment do

	describe "associations" do
		it { should belong_to(:task) }
		it { should belong_to(:user) }
	end

end
