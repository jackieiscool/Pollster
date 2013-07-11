class Question < ActiveRecord::Base
  attr_accessible :description, :poll_id, :answers_attributes

  belongs_to :poll
  has_many :answers
  accepts_nested_attributes_for :answers,
                                :allow_destroy => true
end
