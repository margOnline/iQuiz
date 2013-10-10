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
    expect(page).to have_selector("input[type='submit'][value='true']")
  end

  it 'should display a false choice' do
    question
    visit '/'
    expect(page).to have_selector("input[type='submit'][value='false']")
  end

  context 'when an answer is submitted'
    it 'displays correct' do
      question
      visit '/'
      # click_link('true')
      find("input[type='submit'][value='false']").click
      expect(page).to have_content 'Correct'
    end

    it 'displays incorrect' do
      question
      visit '/'
      find("input[type='submit'][value='true']").click
      expect(page).to have_content 'Incorrect'
    end

end


