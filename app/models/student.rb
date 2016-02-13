class Student < ActiveRecord::Base
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates :name, :presence=>true
  validates :email, :presence=>true
  validates :password, :presence=>true

end
