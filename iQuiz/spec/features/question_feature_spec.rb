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

end


