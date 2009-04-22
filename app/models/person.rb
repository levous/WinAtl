class Person < ActiveRecord::Base
  validates_presence_of :name_last, :name_first
end
