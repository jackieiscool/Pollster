class PollsController < ApplicationController

  def index
  end

  def new
    @polls = Poll.new
  end

  def create
    @polls = Poll.new(params[:poll])

    @polls.save

    redirect_to new_poll_path
  end

  def edit
     @polls = Poll.find_by_name(params[:name])
  end

  def update
    @polls = Poll.find(params[:id])
    @polls.update_attributes(params[:poll])

    redirect_to new_poll_path
  end

  def destroy
  end
end
