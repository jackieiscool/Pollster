class Poll < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :questions
  accepts_nested_attributes_for :questions

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
