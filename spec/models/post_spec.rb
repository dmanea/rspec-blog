require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post)  { Post.new }

  describe '#valid?' do
    
    it 'should not valid after initialization' do
      expect(post.valid?).to be false
    end

    it 'should be valid with only title and description' do
      post.title        = 'test'
      post.description  = 'test'
      expect(post.valid?).to be true
    end
  end

end
