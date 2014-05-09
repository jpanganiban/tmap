class Question < ActiveRecord::Base
  attr_accessible :answer_id, :question, :user_id, :antitags
  has_many :answers
end
