class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,     null: false
      t.string :brand,    null: false
      t.text :detail
      t.string :evaluation
      t.string :age
      t.string :skin_color
      t.string :skin_condition
      t.string :category, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
