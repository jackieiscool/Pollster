class Question < ActiveRecord::Base
  attr_accessible :description, :poll_id

  belongs_to :poll
  accepts_nested_attributes_for :answers,
                                # :rejected_if => lamda { |a| a[:description].blank? }, 
                                :allow_destroy => true
end
