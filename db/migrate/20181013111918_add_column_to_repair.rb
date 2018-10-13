class AddColumnToRepair < ActiveRecord::Migration[5.2]
  def change
    add_reference :repairs, :repair_problem, foreign_key: true
  end
end
