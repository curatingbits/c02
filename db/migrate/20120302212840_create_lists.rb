class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :title
      t.date :date
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
