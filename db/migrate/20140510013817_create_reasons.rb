class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :tag
      t.string :text

      t.timestamps
    end
  end
end
