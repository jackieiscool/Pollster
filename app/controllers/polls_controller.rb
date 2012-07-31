class PollsController < ApplicationController

  def index
  end

  def new
    @polls = Poll.new
  end

  def create
    params[:poll].delete(:question)
    params[:poll].delete(:answer)
    @polls = Poll.new(params[:poll])

    @polls.save

    redirect_to polls_path
      flash[:alert] = "The link to edit your page is... localhost:3000/polls/#{@polls.permalink}/edit"
      flash[:notice] = "The link to take your poll is... localhost:3000/polls/#{@polls.id}"
  end

  def edit
     @polls = Poll.find_by_permalink(params[:id])
  end

  def show
    @polls = Poll.find_by_namelink(params[:id])
  end

  def update
    @polls = Poll.find(params[:id])
    @polls.update_attributes(params[:poll])

    redirect_to polls_path
  end

  def destroy
  end
end
