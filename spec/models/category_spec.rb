# spec/models/category_spec.rb

require 'rails_helper'

RSpec.describe Category, :type => :model do
  it "is valid with valid attributes" do
    expect(Category.new(name: "Category 1")).to be_valid
  end

  it "is not valid without a title" do 
    expect(Category.new(name: nil)).to_not be_valid
    expect(Category.new()).to_not be_valid
  end
end