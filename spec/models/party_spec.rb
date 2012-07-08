require 'spec_helper'

describe Party do

	describe "associations" do
		it { should belong_to(:user) }
		it { should have_many(:joins) }
		it { should have_many(:members).through(:joins) }
	end

  describe "member_tokens" do
  	let(:party) { Factory(:party) }
    (1..5).each do |i|
      let!("user#{i}".to_sym) { Factory(:user, email: "user#{i}@example.com") }
    end

  	it "should return array" do
  		party.member_tokens="#{user1.id},#{user5.id},#{user3.id}"
  		party.member_ids.should == [user1.id, user5.id, user3.id]
  	end
  end

end
