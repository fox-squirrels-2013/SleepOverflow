require 'spec_helper'


describe PhotosController do
  let! (:fake_photo) {Photo.create(url: 'yayaya', created_at: "a string")}
    it '#index gets a 200 get response' do
      get :index
      response.status.should eq 200
      expect(assigns(:photos)).to be_an_instance_of(Array)
    end

    it 'Passes a single photo to the show view' do
      get :show, id: fake_photo.id
      response.status.should eq 200
      expect(assigns(:photo)).to be_an_instance_of(Photo)
    end

end



