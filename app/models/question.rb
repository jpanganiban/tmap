class Question < ActiveRecord::Base
  attr_accessible :answer_id, :question, :user_id
  has_many :answers
end
