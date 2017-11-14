class AddWeekColumnToSections < ActiveRecord::Migration[5.1]
  def change
    add_column(:sections, :week, :string)
  end
end
