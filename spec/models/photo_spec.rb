require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:url)}
  it { should validate_uniqueness_of(:url)}
  it { should validate_presence_of(:created_at)}
end
