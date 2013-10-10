class AnswerController < ApplicationController

  def create
    answer = Answer.create(params[:answer].permit(:reply, :question_id))
    redirect_to action: "show", id: answer.id
  end

  def show
    @answer = Answer.find(params[:id])
    @result = @answer.correct? ? "Correct" : "Incorrect"
  end
 
end
