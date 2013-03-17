require 'spec_helper'

describe Account do
  describe "#subdomain" do
    it "should be unique" do
      account = Account.new(name: "X", subdomain: "kensodev")
      account.save.should be_true

      account = Account.new(name: "X", subdomain: "kensodev")
      account.save.should be_false
    end
  end

  it "does not allow me to save without a name" do
    account = Account.new(subdomain: "kensodev")
    account.save.should be_false
  end
end

# Factory Girl
#
# Factory(:user)
#   - param1
#   - param2
# Factory(:facebook_user)
#
# user.name = "Avi", "foo", "koolllooowwsh"
#
# Faker
# Faker::Name.first_name
# Faker::Internet.email
# Faker::Name.comapny_name
#  
#
#
