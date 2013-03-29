class QuestionsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.question.create(params[:question])
    redirect_to quiz_path(@quiz)
  end

  def index
    @questions = Question.all
  end

  def show
    @questions = Question.find(params[:quiz_id])
  end
end
