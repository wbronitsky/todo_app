class Item < ActiveRecord::Base
  attr_accessible :body, :completed, :status, :title, :user_id

  validates_presence_of :title, :body
end
