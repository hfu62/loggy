class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.date :date
      t.time :check_in
      t.time :check_out
      t.time :working_time
      t.timestamps
    end
  end
end
