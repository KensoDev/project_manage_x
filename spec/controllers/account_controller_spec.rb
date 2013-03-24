require 'spec_helper'

describe AccountController do
  include Devise::TestHelpers
  render_views

  describe "#create" do
    let(:valid_params) do
      { account: {
          name: Faker::Name.first_name,
          subdomain: Faker::Name.first_name.downcase,
          user_attributes: {
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            email: Faker::Internet.email,
            password: 'foobar1111',
            password_confirmation: 'foobar1111'
          }
       }
      }
    end

    it "should create a new account" do
      post :create, valid_params
      response.should be_redirect
    end
  end
end
