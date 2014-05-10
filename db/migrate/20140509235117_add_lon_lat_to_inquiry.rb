class AddLonLatToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :lon, :decimal
    add_column :inquiries, :lat, :decimal
  end
end
