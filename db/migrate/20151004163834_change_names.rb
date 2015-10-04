class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :courses, :desciption, :description
    rename_column :lessons, :desciption, :description
  end
end
