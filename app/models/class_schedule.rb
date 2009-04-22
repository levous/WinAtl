class ClassSchedule < ActiveRecord::Base
  belongs_to :course
  def to_s
    self.start_date.to_s + ' - ' + self.end_date.to_s
  end
end
