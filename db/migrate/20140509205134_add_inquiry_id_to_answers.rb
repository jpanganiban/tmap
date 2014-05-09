class AddInquiryIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :inquiry_id, :integer
  end
end
