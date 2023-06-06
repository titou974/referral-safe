class ChangeStatusToAvailable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :status
    add_column :users, :available, :boolean, default: false
  end
end
