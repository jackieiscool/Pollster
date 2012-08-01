class PollsController < ApplicationController

  def index
  end

  def new
    @poll = Poll.new
    3.times do
      question = @poll.questions.build
      4.times { question.answers.build }
    end
  end

  def create
    params[:poll].delete(:question)
    params[:poll].delete(:answer)
    @poll = Poll.new(params[:poll])

    @poll.save

    redirect_to polls_path
      flash[:alert] = "The link to edit your page is... localhost:3000/polls/#{@poll.permalink}/edit"
      flash[:notice] = "The link to take your poll is... localhost:3000/polls/#{@poll.id}"
  end

  def edit
     @poll = Poll.find_by_permalink(params[:id])
  end

  def show
    @poll = Poll.find_by_namelink(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.update_attributes(params[:poll])

    redirect_to polls_path
  end

  def destroy
  end
end
