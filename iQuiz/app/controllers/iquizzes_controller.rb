class IquizzesController < ApplicationController


  def index
    @question = Question.first
  end

  def next 
    
  end
end
