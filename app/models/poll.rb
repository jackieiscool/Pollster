class Poll < ActiveRecord::Base
  attr_accessible :description, :name, :question, :answer, :questions_attributes

  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions,
                                # :rejected_if => lamda { |a| a[:description].blank? },
                                :allow_destroy => true

  # has_many :answers, :through => :questions
  before_create :populate_question_fields
  before_save :create_permalink

  def populate_question_fields

  end

  private
    def create_permalink
      self.permalink = (0...8).map{ ('a'..'z').to_a[rand(26)] }.join
    end
end
