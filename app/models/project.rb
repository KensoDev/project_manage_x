class Project < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :name
  belongs_to :account
end
