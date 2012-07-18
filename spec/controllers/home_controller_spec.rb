require 'spec_helper'

describe HomeController do
  describe "GET :index" do
    before { sign_in users(:jr) }

    it "should a success" do
      get :index

      response.should be_success
    end
  end
end
