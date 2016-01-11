class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.id :integer
      t.date :date
      t.checkin :time
      t.checkout :time
      t.working_time :time
      t.timestamps
    end
  end
end
