class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quiz }
    end
  end

  def create
    @question = Question.new(params[:question])
    @quiz = Quiz.find(params[:quiz_id])

    respond_to do |format|
      if @question.save
        format.html { redirect_to @quiz, notice: 'Question was successfully created.' }
        format.json { render json: @quiz, status: :created, location: @quiz }
      else
        format.html { render action: "new" }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.find(params[:id])
  end
end
