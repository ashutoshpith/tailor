class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :name
      t.decimal :duration
      t.decimal :budget
      t.integer :status

      t.timestamps
    end
  end
end
