require 'spec_helper'

describe 'home page' do

  let(:question) {FactoryGirl.create(:question, :solution_false)}

  it 'should display a query' do
    question
    visit '/'
    expect(page).to have_content 'Is Chicago the capital of the United States'
  end

  it 'should display a true choice' do
    question
    visit '/'
    expect(page).to have_css('#true')
  end

  it 'should display a false choice' do
    question
    visit '/'
    expect(page).to have_css('#false')  
  end

  context 'when an answer is submitted'
    it 'displays correct' do
      question
      visit '/'
      # click_link('true')
      find('#false').click
      expect(page).to have_content 'Correct!'
    end

    xit 'displays incorrect' do
      question
      visit '/'
      find('#true').click
      expect(page).to have_content 'Incorrect!'
    end

    xit 'logs the response' do
    end

end


