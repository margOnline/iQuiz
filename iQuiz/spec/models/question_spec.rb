require 'spec_helper'

describe 'question' do

 it 'should be able to accept a question' do
   question = FactoryGirl.create(:question, :solution_true)
   expect(question.solution).to be_true
 end

 it 'should have a solution' do 
   question = FactoryGirl.create(:question, :solution_false)
   expect(question.solution).to be_false
 end



end