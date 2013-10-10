require 'spec_helper'

describe 'image' do

  it 'stores a filename' do
    image = FactoryGirl.create(:image)
    expect(image.filename).to eq 'chicago.jpg'
  end

  it 'filename extension can only be jpg, jpeg or png' do
    image = FactoryGirl.create(:image, :filename => 'paris.jpeg')
    Image.new.should have(1).error_on(:filename)
  end
end





