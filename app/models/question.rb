class Question < ActiveRecord::Base
  attr_accessible :answer, :correctanswer, :difficulty, :question, :quiz_id

  belongs_to :quiz
  has_many :answers
end
