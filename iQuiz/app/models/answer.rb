class Answer < ActiveRecord::Base
  belongs_to :question

  def correct?
    question.solution == reply
  end

end
