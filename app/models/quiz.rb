class Quiz < ActiveRecord::Base
  attr_accessible :question, :title, :difficulty, :date

  has_many :questions
end
