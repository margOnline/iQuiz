class IquizzesController < ApplicationController


  def index
    @question = Question.first
  end
end
