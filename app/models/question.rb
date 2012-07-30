class Question < ActiveRecord::Base
  attr_accessible :desripton, :poll_id
  
  belongs_to: poll
end
