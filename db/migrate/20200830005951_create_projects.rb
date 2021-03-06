class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.float :goal
      t.date :start_date
      t.date :endline
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
