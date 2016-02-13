class Course < ActiveRecord::Base
  validates :course_number, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
  validates:
end
