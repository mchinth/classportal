class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|


      t.belongs_to :user, index: true
      t.belongs_to :course, index: true

      t.boolean :is_enrolled
      t.boolean :is_teaching
      t.boolean :is_requesting

      t.timestamps

    end

  end
end
