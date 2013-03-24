class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain, :user_attributes

  validates_uniqueness_of :subdomain
  validates_presence_of :name

  belongs_to :user
  accepts_nested_attributes_for :user
end
