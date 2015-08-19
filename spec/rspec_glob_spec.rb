require 'rails_helper'

RSpec.describe 'The truth' do

  it 'should be truthy' do
    expect(true).to be_truthy
  end

  it 'should not be falsy' do
    expect(true).not_to be_falsy
  end
  
end