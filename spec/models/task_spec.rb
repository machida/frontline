require 'spec_helper'

describe Task do

	describe "associations" do
		it { should belong_to(:user) }
		it { should belong_to(:party) }
		it { should have_many(:comments) }
	end

	describe "validations" do
		it { should validate_presence_of(:user_id) }
		it { should validate_presence_of(:content) }
	end

	describe "state" do
		let!(:party) { Factory(:party) }
		(1..3).each do |i|
 			let!("task#{i}".to_sym) { Factory(:task, party_id: party.id, state: "backlog") }
		end

		describe "start" do
			before do
				task1.start
				task2.start
				task3.start
			end
			it { Task.current(party.id).should include task1 }
			it { Task.current(party.id).should_not include task2 }
			it { Task.current(party.id).should_not include task3 }
		end

		describe "hold" do
			before do
				task1.start
				task1.hold
			end
			it { Task.current(party.id).should_not include task1 }
			it { Task.backlog(party.id).should include task1 }
		end

		describe "finish" do
			before do
				task1.start
				task1.finish
			end
			it { Task.current(party.id).should_not include task1 }
			it { Task.done(party.id).should include task1 }
		end

		describe "redo" do
			before do
				task1.start
				task1.finish
				task1.redo
			end
			it { Task.current(party.id).should_not include task1 }
			it { Task.done(party.id).should_not include task1 }
			it { Task.backlog(party.id).should include task1 }
		end
	end
end
