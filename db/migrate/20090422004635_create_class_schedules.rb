class CreateClassSchedules < ActiveRecord::Migration
  def self.up
    create_table :class_schedules do |t|
      t.timestamp :created_on
      t.timestamp :updated_on
      t.integer :course_id
      t.date :start_date
      t.date :end_date
      t.time :class_begins_time
      t.time :class_ends_time

      t.timestamps
    end
  end

  def self.down
    drop_table :class_schedules
  end
end
