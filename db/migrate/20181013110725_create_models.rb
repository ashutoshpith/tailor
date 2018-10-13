class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.integer :avail

      t.timestamps
    end
  end
end
