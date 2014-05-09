class AddAntiTagsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :antitags, :string
  end
end
