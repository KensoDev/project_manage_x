class DashboardController < ApplicationController
  before_filter :verify_logged_in_user, :verify_subdomain_ownership

  def index
    @projects = current_account.projects(include: :comments
  end
end
