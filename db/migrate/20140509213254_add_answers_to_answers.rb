class AddAnswersToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :answer, :boolean
  end
end
