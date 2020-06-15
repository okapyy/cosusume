class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.references :user,       null: false, foreign_key: true
      t.string :age,            null: false
      t.string :skin_color,     null: false
      t.string :skin_condition, null: false
      t.timestamps
    end
  end
end
