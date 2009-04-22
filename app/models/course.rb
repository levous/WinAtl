class Course < ActiveRecord::Base
  has_many :class_schedules
end
