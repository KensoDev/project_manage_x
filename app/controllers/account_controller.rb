class AccountController < ApplicationController
  def new
    @account = Account.new
    @account.build_user
  end

  def create
    @account = Account.new(params[:account])

    if @account.save
      return redirect_to :root
    end

    render :new
  end
end
