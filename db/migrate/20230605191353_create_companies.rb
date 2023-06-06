class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :sector
      t.string :size
      t.string :siret

      t.timestamps
    end
  end
end
