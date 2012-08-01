require 'spec_helper'

describe Question do
  it { should belong_to(:poll) }
  it { should have_many(:answers) }
end