class Question < ActiveRecord::Base
  has_many :answers
  validates :solution, inclusion: [true, false]
end
