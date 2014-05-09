class AddFloorLimitToLands < ActiveRecord::Migration
  def change
    add_column :lands, :floor_limit, :integer
  end
end
