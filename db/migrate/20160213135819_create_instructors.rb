class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :salary
      t.timestamps
    end
  end
end
