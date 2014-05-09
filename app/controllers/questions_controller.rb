class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
    @questions = Question.all
  end
  
  def create
    @questions = Question.all
    @questions.each do |q|
      q.answers.create(answer: params["question#{q.id}"])
    end
    redirect_to :back
  end
end
