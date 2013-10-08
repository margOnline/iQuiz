require 'spec_helper'

describe 'user sign up page' do
  
  it 'should display a form' do
     visit '/users/sign_up'
    expect(page).to have_content 'Sign up'
  end 

  it 'should display a email field' do 
    visit '/users/sign_up'
    expect(page).to have_field 'user_email'
  end

  it 'should display a submit button' do
    visit '/users/sign_up'
    expect(page).to have_button 'Sign up'
  end

  context 'user signs up' do
    it 'should create a new user' do
      visit '/users/sign_up'
      add_user('usersignup@example.com')
      expect(User.last.email).to eq 'usersignup@example.com'
    end

    it 'and redirect to the home page' do
      visit '/users/sign_up'
      user = FactoryGirl.build(:user)
      add_user(user.email)
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end
end


def add_user(email)
  within '#sign-up' do
    fill_in 'user_email', with: email
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign up'   
  end 
end



