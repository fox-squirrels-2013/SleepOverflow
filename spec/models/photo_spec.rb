require 'spec_helper'

describe Photo do
  # it { should have_many(:items).through(:item_menus) }
  it { should validate_presence_of(:url)}
  it { should validate_uniqueness_of(:url)}
  it { should validate_presence_of(:created_at)}


  it "should have a unique id" do
    expect{
    Photo.create(:url => "hello", :created_at => "10/12")
    }.to change {Photo.count}.by(1)
  end

end
