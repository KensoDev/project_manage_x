class AccountController < ApplicationController
  def new
    @account = Account.new
    @account.build_user
  end
end
