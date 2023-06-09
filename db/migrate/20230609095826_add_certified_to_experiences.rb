class AddCertifiedToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :certified, :boolean, default: false
  end
end
