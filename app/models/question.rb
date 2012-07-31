class Question < ActiveRecord::Base
  attr_accessible :description, :poll_id

  belongs_to :poll
end
