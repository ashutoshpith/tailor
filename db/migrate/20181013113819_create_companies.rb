class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :code
      t.string :name
      t.integer :avail

      t.timestamps
    end
  end
end
