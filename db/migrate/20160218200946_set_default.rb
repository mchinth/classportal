class SetDefault < ActiveRecord::Migration

  def change
    change_column :users, :is_admin, :boolean, default: false
    change_column :users, :is_instructor, :boolean, default: false


  end

end
