require 'spec_helper'

describe 'answer' do 

  it 'should be able to store true or false' do
    answer = FactoryGirl.create(:answer, :reply_true)
    expect(answer.reply).to be true
  end

  it 'should have a question id' do
    answer = FactoryGirl.create(:answer, :reply_false)
    expect(answer.question_id).to eq 1 
  end

  
end