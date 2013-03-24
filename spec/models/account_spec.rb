require 'spec_helper'

describe Account do
  describe "#subdomain" do
    it "should be unique" do
      account = FactoryGirl.build(:account, subdomain: "kensodev")
      account.save.should be_true

      account = FactoryGirl.build(:account, subdomain: "kensodev")
      account.save.should be_false
    end
  end

  it "does not allow me to save without a name" do
    account = FactoryGirl.build(:account, name: nil)
    account.save.should be_false
  end

  context "user" do
    it "does not allow me to save an account without a user" do
      account = FactoryGirl.build(:account, user_id: nil)
      account.save.should be_false
    end
  end
end
