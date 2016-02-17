class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|


      t.string :course_number
      t.string :title
      t.string :description
      t.string :instructor
      t.date :start_date
      t.date :end_date
      t.boolean :status

      t.belongs_to :instructor
      t.timestamps

    end
    add_index :courses, :course_number, :unique => true
  end
end
