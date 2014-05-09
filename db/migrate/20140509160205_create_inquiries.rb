class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.string :lon
      t.string :lat
      t.string :size

      t.timestamps
    end
  end
end
