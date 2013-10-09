require 'spec_helper'

describe 'response' do

  it 'should hold the user score' do
    response = FactoryGirl.create(:response)
    expect(response.score).to eq 10
  end

end