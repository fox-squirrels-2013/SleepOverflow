require 'spec_helper'


describe PhotosController do
    it '#index gets a 200 get response' do
      get :index
      response.status.should eq 200
      expect(assigns(:photos)).to be_an_instance_of(Array)
    end

end



