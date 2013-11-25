require 'spec_helper'
describe PhotosController do
  let!(:fake_photo) {Photo.create(url: 'yayaya', created_at: "a string")}
    it '#index gets a 200 get response' do
      get :index
      expect(assigns(:photos)).to eq Photo.all
    end

    it 'Passes a single photo to the show view' do
      get :show, id: fake_photo.id
      expect(assigns(:photo)).to be_a_new(Photo) #look up the syntax
    end

    it 'receives data from Twitter' do
      # don't call apis in tests, stub the calls.
      twitter_response = CLIENT.search("#dbcsleeps")
      expect(twitter_response).to be_an_instance_of(Twitter::SearchResults)
    end
end



