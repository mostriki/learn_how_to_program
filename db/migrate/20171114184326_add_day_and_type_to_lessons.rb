class AddDayAndTypeToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column(:lessons, :day, :string)
    add_column(:lessons, :type, :string)
  end
end
