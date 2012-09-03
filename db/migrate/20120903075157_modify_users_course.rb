class ModifyUsersCourse < ActiveRecord::Migration
  def change
    rename_column :users, :course, :course_id
  end
end
