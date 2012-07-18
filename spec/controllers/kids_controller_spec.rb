require 'spec_helper'

describe KidsController do
  describe "POST :update" do
    let(:jayda) { kids(:jayda) }

    before { sign_in users(:jr) }

    it "should allow you to say that your wife will pick up the kid" do
      mock_email = mock :email
      mock_email.should_receive :deliver

      Notifications.
        should_receive(:pickup_set).
        with(users(:arshia), users(:arshia), jayda, users(:jr)).
        and_return(mock_email)

      post :update, :id => jayda, :commit => "You"

      response.should redirect_to(root_url)
      jayda.reload.pickup.should_not == users(:jr)
      jayda.pickup.should == users(:arshia)
    end

    it "should allow you to say you'll pick up the kid" do
      post :update, :id => jayda, :commit => "Me"

      response.should redirect_to(root_url)
      jayda.reload.pickup.should == users(:jr)
    end
  end
end
