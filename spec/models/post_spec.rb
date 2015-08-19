require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post)  { Post.new }

  describe '#valid?' do
    
    it 'should not valid after initialization' do
      expect(post.valid?).to be_falsy
    end

    it 'should be valid with only title and description' do
      post.title        = 'test'
      post.description  = 'test'
      expect(post.valid?).to be_truthy
    end
  end

  describe '#save' do
    let(:post)  { build :post }
    it 'should persist records' do
      expect(post.save).to be_truthy
      expect(Post.count).to be_eql 1
    end
  end

end
