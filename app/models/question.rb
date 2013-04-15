class Question < ActiveRecord::Base
  attr_accessible :answer, :correctanswer, :difficulty, :question, :quiz_id, :answers_attributes

  belongs_to :quiz
  has_many :answers, :dependent => :destroy

  accepts_nested_attributes_for :answers, :allow_destroy => true
end
