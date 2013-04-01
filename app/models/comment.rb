class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :subject, :body

  belongs_to :item, polymorphic: true
end
