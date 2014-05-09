class AddClassificationToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :classification, :string
  end
end
