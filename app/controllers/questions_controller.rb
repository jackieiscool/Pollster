class QuestionsController < ApplicationController

  def new
    @poll = Poll.find(params[:poll_id])

    @question = Question.new
    respond_to do |format|
      format.js {render :action => "new" }
    end
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
