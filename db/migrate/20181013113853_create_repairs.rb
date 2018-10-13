class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.references :model, foreign_key: true
      t.references :problem, foreign_key: true
      t.string :other
      t.datetime :pick_date

      t.timestamps
    end
  end
end
