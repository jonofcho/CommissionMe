class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :field
      t.text :title
      t.date :start_date
      t.date :end_date
      t.text :comment

      t.timestamps null: false
    end
  end
end
