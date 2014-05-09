class AddXAndYToLands < ActiveRecord::Migration
  def change
    add_column :lands, :x, :integer
    add_column :lands, :y, :integer
  end
end
