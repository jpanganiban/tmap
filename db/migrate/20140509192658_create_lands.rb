class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :tags
      t.integer :earthquake
      t.integer :tsunami
      t.integer :flooding
      t.integer :landslide

      t.timestamps
    end
  end
end
