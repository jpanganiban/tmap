class Answer < ActiveRecord::Base
  attr_accessible :question_id, :answer
  belongs_to :inquiry
  belongs_to :question
end
