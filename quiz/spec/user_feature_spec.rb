require 'spec_helper'

describe 'user sign up page' do
  it 'should display a form' do
     visit '/signup'
    expect(page).to have_content 'sign up'
  end 

  it 'should display a email field' do 
    visit '/signup'
    expect(page).to have_field 'email'
  end
end
