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
      redirect_to polls_path
        flash[:alert] = "The link to edit your page is... localhost:3000/polls/#{@poll.permalink}/edit"
        flash[:notice] = "The link to take your poll is... localhost:3000/polls/#{@poll.id}"
    else
      # flash{:error] = "You must enter a def title"
        render 'new'
    end
  end

  def edit
     @poll = Poll.find_by_permalink(params[:id])
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

