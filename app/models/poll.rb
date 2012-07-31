class Poll < ActiveRecord::Base
  attr_accessible :description, :name, :question, :answer

  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, 
                                # :rejected_if => lamda { |a| a[:description].blank? }, 
                                :allow_destroy => true

  has_many :answers, :through => :questions

  before_save :create_permalink
  before_save :create_namelink

  private
    def create_permalink
      self.permalink = (0...8).map{ ('a'..'z').to_a[rand(26)] }.join
    end

    def create_namelink
      self.namelink = self.name.downcase.delete(' ')
    end
end
