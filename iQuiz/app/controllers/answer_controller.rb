class AnswerController < ApplicationController

  def create
    Answer.create(params[:answer].permit(:reply))
    redirect_to '/'
  end

end
