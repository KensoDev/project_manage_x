require 'spec_helper'

describe DashboardController do
  render_views
  include Devise::TestHelpers

  let(:account) { FactoryGirl.create(:account) }
  let(:user) { account.user }

  before(:each) do
    @request.host = "tikal.manage.local"
    @request.env["HTTP_REFERER"] = @request.host
  end

  describe "GET index" do
    context "When logged out" do
      it "should redirect if user is not logged in" do
        get :index
        response.should be_redirect
      end
    end

    context "When logged in" do
      before(:each) { sign_in(user) }

      it "should be successful" do
        get :index
        response.should be_success
      end
    end
  end
end
