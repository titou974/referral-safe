class RenamePositionsToRoles < ActiveRecord::Migration[7.0]
  def change
    rename_table :positions, :roles
    rename_column :roles, :name, :position
  end
end
