class Question < ActiveRecord::Base
  attr_accessible :description, :poll_id

  belongs_to :poll
  has_many :answers
  accepts_nested_attributes_for :answers,
                                # :rejected_if => lamda { |a| a[:description].blank? },
                                :allow_destroy => true
end
