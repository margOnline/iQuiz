class QuizzesController < ApplicationController

  attr_accessor :create_quiz

  def index
    @quizzes = Quiz.all
  end

  def create_quiz(name)
    Quiz.create(title: name)
  end
  
end

