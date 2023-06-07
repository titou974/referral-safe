class ChangeNameInRoles < ActiveRecord::Migration[7.0]
  def change
    remove_column :roles, :name
    add_column :roles, :recruiter, :boolean, default: false
  end
end
