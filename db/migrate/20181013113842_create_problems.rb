class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :issue
      t.decimal :amount

      t.timestamps
    end
  end
end
