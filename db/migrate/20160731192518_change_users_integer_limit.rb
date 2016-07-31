class ChangeUsersIntegerLimit < ActiveRecord::Migration
  def change
    change_column :users, :uid, :integer, limit: 30
  end
end
