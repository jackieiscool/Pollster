class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @poll = Poll.find(params[:poll_id])
    @question = @poll.questions.build(params[:question])
    @question.save
  end

  def edit
    @questions = Question.all
  end

  def update
  end

  def destroy
  end
end
