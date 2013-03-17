class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain

  validates_uniqueness_of :subdomain
  validates_presence_of :name
end
