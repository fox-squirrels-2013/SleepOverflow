require 'spec_helper'

describe Photo do

  it "should have a unique id" do
    expect{
    Photo.create(:url => "hello", :twitter_created => "10/12")
    }.to change {Photo.count}.by(1)
  end

end
