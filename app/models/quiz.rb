class Quiz < ActiveRecord::Base
  attr_accessible :title, :difficulty, :date, :questions_attributes

  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :allow_destroy => true
end
