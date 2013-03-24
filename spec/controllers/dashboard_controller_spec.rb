require 'spec_helper'

describe DashboardController do
  render_views
  include Devise::TestHelpers

  let(:account) { FactoryGirl.create(:account, subdomain: "tikal") }
  let(:user) { account.user }

  let(:other_account) { FactoryGirl.create(:account, subdomain: "foobar") }
  let(:other_user) { other_account.user }

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

    context "When logged in to the wrong account" do
      before(:each) { sign_in(other_user) }

      it "should redirect me to the root" do
        get :index
        response.should be_redirect
      end
    end
  end
end
