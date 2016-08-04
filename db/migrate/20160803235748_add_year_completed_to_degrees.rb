class AddYearCompletedToDegrees < ActiveRecord::Migration
  def change
    add_column :degrees, :year_completed, :integer
  end
end
