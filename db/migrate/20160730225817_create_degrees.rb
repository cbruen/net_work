class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.integer :user_id
      t.integer :school_id
      t.string :name
      t.integer :gpa

      t.timestamps null: false
    end
  end
end
