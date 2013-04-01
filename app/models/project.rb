class Project < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :name
  belongs_to :account
  has_many :comments, as: :item
end
