# spec/models/flash_card_spec.rb

require 'rails_helper'

RSpec.describe FlashCard, :type => :model do
  before(:all) do
    @category = Category.create(name: "Category 1")
  end

  it "is valid with valid attributes" do
    expect(FlashCard.new(question: "Question 1", answer: "Answer 1", category: @category)).to be_valid
  end

  it "is valid with or without a link" do 
    expect(FlashCard.new(question: "Question 1", answer: "Answer 1", category: @category)).to be_valid
    expect(FlashCard.new(question: "Question 1", answer: "Answer 1", link: "www.link.com", category: @category)).to be_valid
  end

  it "is not valid without a question" do 
    expect(FlashCard.new(question: nil, answer: "Answer 1", category: @category)).to_not be_valid
    expect(FlashCard.new(answer: "Answer 1", category: @category)).to_not be_valid
  end

  it "is not valid without an answer" do 
    expect(FlashCard.new(question: "Question 1", answer: nil, category: @category)).to_not be_valid
    expect(FlashCard.new(question: "Question 1", category: @category)).to_not be_valid
  end
end