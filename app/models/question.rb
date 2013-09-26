class Question < ActiveRecord::Base
  attr_accessible :body, :user_id, :title
  has_many :answers
  belongs_to :user
end
