require 'spec_helper'

describe PollsController do

	describe "GET index" do 

		it "assigns @polls" do
			poll = Poll.create(name: "fake poll")
      get :index
      expect(assigns(:polls)).to eq([poll])
		end

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end

	end

	describe "GET show" do

		it "renders the show template" do
			poll = Poll.create(name: "fake poll")
			get :show, id: poll.id
			expect(response).to render_template("show")
		end

	end

	describe "POST create" do

		context "it saves to database" do

			it "creates a new poll object" do
				poll_attributes = { name: "test poll" }
				post :create, poll: poll_attributes
				Poll.count.should == 1
				Poll.first.name.should == "test poll"
			end

		end

		context "it does not save to database" do

			it "does not create poll object" do
				poll_attributes = { name: nil }
				post :create, poll: poll_attributes
				Poll.count.should == 0
			end

		end
	end
end