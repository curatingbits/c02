class CreateSkits < ActiveRecord::Migration
  def self.up
    create_table :skits do |t|
      t.string :title
      t.string :description
      t.date :date_ended

      t.timestamps
    end
  end

  def self.down
    drop_table :skits
  end
end
