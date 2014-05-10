class Answer < ActiveRecord::Base
  attr_accessible :question_id, :answer
  belongs_to :inquiry
  belongs_to :question

  def tags
    if answer
      return question.antitags.split(',').map { |t| t.strip }
    end
    return []
  end
end
