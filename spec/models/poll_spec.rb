require 'spec_helper'

describe Poll do

  it { should have_many(:questions) }
  it { should have_many(:answers).through(:questions) }

end