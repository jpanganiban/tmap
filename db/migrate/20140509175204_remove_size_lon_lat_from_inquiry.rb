class RemoveSizeLonLatFromInquiry < ActiveRecord::Migration
  def up
    remove_column :inquiries, :lon
    remove_column :inquiries, :lat
    remove_column :inquiries, :size
  end

  def down
    add_column :inquiries, :size, :string
    add_column :inquiries, :lat, :string
    add_column :inquiries, :lon, :string
  end
end
