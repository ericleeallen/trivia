class Answer < ActiveRecord::Base
  attr_accessible :answer, :correct_answer, :question_id

  belongs_to :question
end
