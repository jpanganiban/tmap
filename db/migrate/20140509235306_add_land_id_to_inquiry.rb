class AddLandIdToInquiry < ActiveRecord::Migration
  def change
    add_column :inquiries, :land_id, :integer
  end
end
