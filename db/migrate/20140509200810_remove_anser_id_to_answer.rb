class RemoveAnserIdToAnswer < ActiveRecord::Migration
  def up
    remove_column :answers, :anser_id, :user_id
  end

  def down
  end
end
