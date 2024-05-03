class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps #created_at #updated_at
    end
  end
end
