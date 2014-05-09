class AddXAndYToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :x, :integer
    add_column :inquiries, :y, :integer
  end
end
