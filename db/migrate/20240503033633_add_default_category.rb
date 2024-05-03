class AddDefaultCategory < ActiveRecord::Migration[7.1]
  # Automatically creates entry in Category table
  def up
    Category.create(title: "General")
  end

  def down
    Category.find_by(title: "General").destroy
  end

end
