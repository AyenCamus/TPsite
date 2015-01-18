class ChangeDoBtoDatetime < ActiveRecord::Migration
  def change
    remove_column :users, :date_of_birth
    add_column :users, :date_of_birth, :datetime
  end
end
