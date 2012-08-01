require 'spec_helper'

describe Poll do
  before(:all) do
    @poll = Poll.new
  end

  it { should have_many(:questions) }
  it { should have_many(:answers).through(:questions) }

  # describe create_permalink do
  #   it 'creates random link for poll creator' do
  #     @poll.permalink_should == "/\S{8}"
  #   end
  # end
end