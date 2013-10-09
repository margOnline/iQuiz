require 'spec_helper'

describe 'iquizzes page' do

  it 'should display a query' do
    FactoryGirl.create(:question, :solution_false)
    visit '/iquizzes'
    expect(page).to have_content 'Is Chicago the capital of the United States'
  end

end


