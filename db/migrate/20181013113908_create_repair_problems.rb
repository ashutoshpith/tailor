class CreateRepairProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :repair_problems do |t|
      t.references :repair, foreign_key: true
      t.references :problem, foreign_key: true

      t.timestamps
    end
  end
end
