class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain

  validates_uniqueness_of :subdomain
  validates_presence_of :name, :user_id

  belongs_to :user
  accepts_nested_attributes_for :user
end
