class RemoveAdminFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :admin, :data_type, {boolean}
  end
end
