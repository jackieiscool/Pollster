class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
    3.times do
      question = @poll.questions.build
      4.times { question.answers.build }
    end
  end

  def create
     params[:poll].delete(:answers)
    @poll = Poll.new(params[:poll])

    if @poll.save
      redirect_to @poll
    else
      # flash{:error] = "You must enter a def title"
        render 'new'
    end
  end

  def edit
     
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.update_attributes(params[:poll])

    redirect_to polls_path
  end

  def destroy
  end

end

