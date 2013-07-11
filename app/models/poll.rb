class Poll < ActiveRecord::Base
  attr_accessible :description, :name, :question, :answer, :questions_attributes, :answers_attributes

  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions

  accepts_nested_attributes_for :questions,
                                # :rejected_if => lamda { |a| a[:description].blank? },
                                :allow_destroy => true
  accepts_nested_attributes_for :answers

  validates_presence_of :name

end
