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

  it 'should display a submit button' do
    visit '/signup'
    expect(page).to have_button 'sign up'
  end

  context 'user signs up' do
    it 'should create a new user' do
      expect(User.count).to eq 0
      visit '/signup'
      add_user("bob@bob.com")
      expect(User.count).to eq 1
    end

    it 'and redirect to the home page' do
      visit '/signup'
      add_user("bob@bob.com")
      expect(User.count).to eq 1
    end
  end
end


def add_user(email)
  within '#new-user' do
    fill_in 'email', with: email
    click_button 'sign up'   
  end 
end



