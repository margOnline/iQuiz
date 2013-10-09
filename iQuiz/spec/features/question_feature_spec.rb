require 'spec_helper'

describe 'iquizzes page' do

  let(:question) {FactoryGirl.create(:question, :solution_false)}

  it 'should display a query' do
    question
    visit '/iquizzes'
    expect(page).to have_content 'Is Chicago the capital of the United States'
  end

  it 'should display a true choice' do
    question
    visit '/iquizzes'
    expect(page).to have_css('#true')
  end

  it 'should display a false choice' do
    question
    visit '/iquizzes'
    expect(page).to have_css('#false')  
  end

  context 'when an answer is submitted'
    it 'displays correct' do
      question
      visit '/iquizzes'
      # click_link('true')
      find('#false').click
      expect(page).to have_content 'Correct!'
    end

    it 'displays incorrect' do
      question
      visit '/iquizzes'
      find('#true').click
      expect(page).to have_content 'Incorrect!'
    end

    it 'converts response to boolean equivalent'

end


