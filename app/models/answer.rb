class Answer < ActiveRecord::Base
  attr_accessible :anser_id, :answer, :user_id
  belongs_to :inquiry
  belongs_to :question
end
