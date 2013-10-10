require 'spec_helper'

describe 'answer page' do 

  it 'should display a button to display another question' do
    @question = FactoryGirl.create(:question, :solution_true) 
    @answer = FactoryGirl.create(:answer, :reply_true)
    visit answer_path(@answer)
    expect(page).to have_content 'Next'
  end
  
end