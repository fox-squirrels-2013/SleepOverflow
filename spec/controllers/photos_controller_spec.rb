require 'spec_helper'


describe PhotosController do
  it '#index gets a 200 get response' do
    get :index
    response.status.should eq 200
  end
end


