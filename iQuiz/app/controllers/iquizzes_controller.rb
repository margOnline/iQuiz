class IquizzesController < ApplicationController


  def show
    @questions = Question.all
    @question = @questions.sample
  end

  # def correct_answer? 
  #   form_response == self.solution
  # end

  # def show_all
  #   @quiz = Questions.all
  # end

  # def show_next
  #   @quiz = Questions.find params[:id + 1]
  # end
end
