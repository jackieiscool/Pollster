FactoryGirl.define do

	factory :poll do
		name { FactoryGirl.generate(:name) }
	end

end